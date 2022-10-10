//
//  AutenticacaoLocal.swift
//  Alura Ponto
//
//  Created by Jaqueline Hillesheim on 06/10/22.
//

import Foundation
import LocalAuthentication


class AutenticacaoLocal {
    
    private let authebticatorContext = LAContext()
    private var error: NSError?
    
    func autorizaUsuario(completion: @escaping(_ autentucao: Bool) -> Void) {
        if authebticatorContext.canEvaluatePolicy(.deviceOwnerAuthenticationWithBiometrics, error: &error) {
            authebticatorContext.evaluatePolicy(.deviceOwnerAuthenticationWithBiometrics, localizedReason: "É necessário autenticação para apagar um recibo") { sucesso, error in
                
                completion(sucesso)
            }
        }
    }
}
