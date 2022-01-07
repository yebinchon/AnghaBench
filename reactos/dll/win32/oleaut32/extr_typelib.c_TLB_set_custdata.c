
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct list {int dummy; } ;
typedef int VARIANT ;
struct TYPE_4__ {int data; int entry; int * guid; } ;
typedef int TLBGuid ;
typedef TYPE_1__ TLBCustData ;
typedef int HRESULT ;


 int DISP_E_BADVARTYPE ;
 int E_OUTOFMEMORY ;
 TYPE_1__* TLB_get_custdata_by_guid (struct list*,int ) ;
 int TLB_get_guid_null (int *) ;







 int V_VT (int *) ;
 int VariantClear (int *) ;
 int VariantCopy (int *,int *) ;
 int VariantInit (int *) ;
 TYPE_1__* heap_alloc (int) ;
 int list_add_tail (struct list*,int *) ;

__attribute__((used)) static HRESULT TLB_set_custdata(struct list *custdata_list, TLBGuid *tlbguid, VARIANT *var)
{
    TLBCustData *cust_data;

    switch(V_VT(var)){
    case 132:
    case 130:
    case 129:
    case 131:
    case 128:
    case 133:
    case 134:
        break;
    default:
        return DISP_E_BADVARTYPE;
    }

    cust_data = TLB_get_custdata_by_guid(custdata_list, TLB_get_guid_null(tlbguid));

    if (!cust_data) {
        cust_data = heap_alloc(sizeof(TLBCustData));
        if (!cust_data)
            return E_OUTOFMEMORY;

        cust_data->guid = tlbguid;
        VariantInit(&cust_data->data);

        list_add_tail(custdata_list, &cust_data->entry);
    }else
        VariantClear(&cust_data->data);

    return VariantCopy(&cust_data->data, var);
}
