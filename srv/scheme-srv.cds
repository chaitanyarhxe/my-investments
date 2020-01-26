using mfdata as schData from '../db/scheme-data';

service mfdataService @(path : '/mfdata') {
    entity schInfo @readonly as projection on schData.Schemes excluding {
        modifiedAt,
        createdAt,
        createdBy,
        modifiedBy
    };

    entity amcInfo @readonly as projection on schData.Amcs excluding {
        modifiedAt,
        createdAt,
        createdBy,
        modifiedBy
    };
}