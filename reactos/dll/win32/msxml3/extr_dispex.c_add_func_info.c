
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int tid_t ;
typedef int func_info_t ;
struct TYPE_5__ {int func_cnt; TYPE_2__* funcs; } ;
typedef TYPE_1__ dispex_data_t ;
struct TYPE_6__ {scalar_t__ id; int tid; int name; } ;
typedef int ITypeInfo ;
typedef int HRESULT ;
typedef int DWORD ;
typedef scalar_t__ DISPID ;


 scalar_t__ FAILED (int ) ;
 int ITypeInfo_GetDocumentation (int *,scalar_t__,int *,int *,int *,int *) ;
 TYPE_2__* heap_realloc (TYPE_2__*,int) ;

__attribute__((used)) static void add_func_info(dispex_data_t *data, DWORD *size, tid_t tid, DISPID id, ITypeInfo *dti)
{
    HRESULT hres;

    if(data->func_cnt && data->funcs[data->func_cnt-1].id == id)
        return;

    if(data->func_cnt == *size)
        data->funcs = heap_realloc(data->funcs, (*size <<= 1)*sizeof(func_info_t));

    hres = ITypeInfo_GetDocumentation(dti, id, &data->funcs[data->func_cnt].name, ((void*)0), ((void*)0), ((void*)0));
    if(FAILED(hres))
        return;

    data->funcs[data->func_cnt].id = id;
    data->funcs[data->func_cnt].tid = tid;

    data->func_cnt++;
}
