using {alm.mapro as alm} from '../db/schema';

service MapProService {
    entity Product as projection on alm.Product;

}

annotate MapProService.Product with @odata.draft.enabled;
annotate MapProService.Product with @(UI.DeleteHidden: true);