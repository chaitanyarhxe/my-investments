namespace mfdata;

using {managed} from '@sap/cds/common';

entity Amcs : managed {
    key amccode : Integer;
        amcname : String;
        schemes : Association to many Schemes
                      on schemes.amccode = $self;
}

entity Schemes : managed {
    key scode   : Integer;
        sname   : String;
        amccode : Association to Amcs;
}