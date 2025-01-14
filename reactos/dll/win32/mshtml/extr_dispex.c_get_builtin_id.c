
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_13__ {int func_cnt; TYPE_1__** name_table; } ;
typedef TYPE_4__ dispex_data_t ;
struct TYPE_14__ {TYPE_3__* data; } ;
struct TYPE_12__ {TYPE_2__* vtbl; } ;
struct TYPE_11__ {scalar_t__ (* get_dispid ) (TYPE_5__*,int ,int,int *) ;} ;
struct TYPE_10__ {int id; int name; } ;
typedef scalar_t__ HRESULT ;
typedef TYPE_5__ DispatchEx ;
typedef int DWORD ;
typedef int DISPID ;
typedef int BSTR ;


 scalar_t__ DISP_E_UNKNOWNNAME ;
 scalar_t__ E_FAIL ;
 scalar_t__ S_OK ;
 int fdexNameCaseSensitive ;
 TYPE_4__* get_dispex_data (TYPE_5__*) ;
 scalar_t__ strcmpW (int ,int ) ;
 int strcmpiW (int ,int ) ;
 scalar_t__ stub1 (TYPE_5__*,int ,int,int *) ;

__attribute__((used)) static HRESULT get_builtin_id(DispatchEx *This, BSTR name, DWORD grfdex, DISPID *ret)
{
    dispex_data_t *data;
    int min, max, n, c;

    data = get_dispex_data(This);
    if(!data)
        return E_FAIL;

    min = 0;
    max = data->func_cnt-1;

    while(min <= max) {
        n = (min+max)/2;

        c = strcmpiW(data->name_table[n]->name, name);
        if(!c) {
            if((grfdex & fdexNameCaseSensitive) && strcmpW(data->name_table[n]->name, name))
                break;

            *ret = data->name_table[n]->id;
            return S_OK;
        }

        if(c > 0)
            max = n-1;
        else
            min = n+1;
    }

    if(This->data->vtbl && This->data->vtbl->get_dispid) {
        HRESULT hres;

        hres = This->data->vtbl->get_dispid(This, name, grfdex, ret);
        if(hres != DISP_E_UNKNOWNNAME)
            return hres;
    }

    return DISP_E_UNKNOWNNAME;
}
