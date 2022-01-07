
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {TYPE_2__* desc; } ;
typedef TYPE_3__ vbdisp_t ;
typedef int vbdisp_invoke_type_t ;
struct TYPE_7__ {unsigned int prop_cnt; int func_cnt; scalar_t__ typeinfo; TYPE_1__* props; } ;
struct TYPE_6__ {int name; int is_public; } ;
typedef int HRESULT ;
typedef int DISPID ;
typedef int BSTR ;
typedef int BOOL ;


 int DISP_E_UNKNOWNNAME ;
 int ITypeInfo_GetIDsOfNames (scalar_t__,int *,int,int*) ;
 scalar_t__ SUCCEEDED (int ) ;
 int S_OK ;
 scalar_t__ get_func_id (TYPE_3__*,int ,int ,int ,int*) ;
 int strcmpiW (int ,int ) ;

HRESULT vbdisp_get_id(vbdisp_t *This, BSTR name, vbdisp_invoke_type_t invoke_type, BOOL search_private, DISPID *id)
{
    unsigned i;

    if(get_func_id(This, name, invoke_type, search_private, id))
        return S_OK;

    for(i=0; i < This->desc->prop_cnt; i++) {
        if(!search_private && !This->desc->props[i].is_public)
            continue;

        if(!strcmpiW(This->desc->props[i].name, name)) {
            *id = i + This->desc->func_cnt;
            return S_OK;
        }
    }

    if(This->desc->typeinfo) {
        HRESULT hres;

        hres = ITypeInfo_GetIDsOfNames(This->desc->typeinfo, &name, 1, id);
        if(SUCCEEDED(hres))
            return S_OK;
    }

    *id = -1;
    return DISP_E_UNKNOWNNAME;
}
