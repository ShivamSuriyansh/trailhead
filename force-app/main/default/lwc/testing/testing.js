import { LightningElement,track,api} from 'lwc';
export default class Testing extends LightningElement {
    _count = 0;

    @api
    get counter(){
        return this._count;
    }

    set counter(value){
        this._count = value;
    }

    handlInc(){
        this._count++;
    }
}