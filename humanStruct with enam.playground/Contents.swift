class Human {
    let name: String
    let age: Int
    let gender: Gender
    var wifeName: String?
    var employentStatus: EmploymentStatus = .unemployed
    func startWalking () {
        print("Is walking")
    }
    func married (anotherPerson: Human) {
        anotherPerson.wifeName = self.name
        self.wifeName = anotherPerson.name
    }
    init (name: String, age: Int, gender: Gender) {
        self.name = name
        self.age = age
        self.gender = gender
    }
    enum Gender {
        case male
        case female
    }
    enum EmploymentStatus {
        case employed (name: String)
        case unemployed
        case bussines (name: String)
        var statusString: String {
            switch self {
            case .unemployed:
                return("Petr unemployed")
            case let .bussines(name: bussinesName):
                return("Petr \(bussinesName)")
            case let .employed(name: employedName):
                return("Petr \(employedName)")
            }
        }
    }
}
var Petr = Human(name: "Petr", age: 21, gender: Human.Gender.male)
Petr.employentStatus = .bussines(name: "fweiunfg")
Petr.employentStatus.statusString
var Lisa = Human(name: "Lisa", age: 22, gender: Human.Gender.female)

