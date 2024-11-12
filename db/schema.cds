using {
    cuid,
    managed
} from '@sap/cds/common';

namespace alm.mapro;

entity Product : cuid, managed {
    externalID      : String;
    name            : String @mandatory;
    productOwner    : String @mandatory;
    delegate        : String;
    testCoordinator : String @mandatory;
    testLead        : String @mandatory;
    isActive        : Boolean;
    businessArea    :String;
    environment     : Composition of many {
                          key ID              : UUID;
                              environmentName : String;
                      }
}
