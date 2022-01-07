
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ id; } ;
typedef TYPE_1__ func_info_t ;
struct TYPE_6__ {int func_cnt; TYPE_1__* funcs; } ;
typedef TYPE_2__ dispex_data_t ;
typedef int HRESULT ;
typedef scalar_t__ DISPID ;


 int DISP_E_UNKNOWNNAME ;
 int S_OK ;
 int WARN (char*,scalar_t__) ;

__attribute__((used)) static HRESULT get_builtin_func(dispex_data_t *data, DISPID id, func_info_t **ret)
{
    int min, max, n;

    min = 0;
    max = data->func_cnt-1;

    while(min <= max) {
        n = (min+max)/2;

        if(data->funcs[n].id == id) {
            *ret = data->funcs+n;
            return S_OK;
        }

        if(data->funcs[n].id < id)
            min = n+1;
        else
            max = n-1;
    }

    WARN("invalid id %x\n", id);
    return DISP_E_UNKNOWNNAME;
}
