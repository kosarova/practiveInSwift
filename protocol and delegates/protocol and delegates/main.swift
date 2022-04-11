
class EmergencyCallHandler {
    var delegate : AdvancedLifeCertificate?
    func whatsHappining () {
        print("Whats happining???")
    }
    func medicalEmergancy() {
        delegate?.performCPR()
    }
}

protocol AdvancedLifeCertificate {
    func performCPR()
}

struct Paramedic: AdvancedLifeCertificate {
    init (handler: EmergencyCallHandler) {
        handler.delegate = self
    }
    func performCPR() {
        print("Hear Heart 30 sec")
    }
}
struct Doctor: AdvancedLifeCertificate {
    
    init (handler: EmergencyCallHandler) {
        handler.delegate = self
    }
    
    func performCPR() {
    print("Singing song and hear heart 30 sec")
    }
    
}

var emilio = EmergencyCallHandler()
var pete = Paramedic(handler: emilio)
emilio.whatsHappining()
emilio.medicalEmergancy()

var stivenson = Doctor(handler: emilio)
emilio.medicalEmergancy()
