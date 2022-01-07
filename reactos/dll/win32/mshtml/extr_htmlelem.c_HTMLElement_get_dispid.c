
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {TYPE_1__* vtbl; } ;
struct TYPE_6__ {TYPE_3__ node; } ;
struct TYPE_5__ {int (* get_dispid ) (TYPE_3__*,int ,int ,int *) ;} ;
typedef TYPE_2__ HTMLElement ;
typedef int HRESULT ;
typedef int DispatchEx ;
typedef int DWORD ;
typedef int DISPID ;
typedef int BSTR ;


 int DISP_E_UNKNOWNNAME ;
 TYPE_2__* impl_from_DispatchEx (int *) ;
 int stub1 (TYPE_3__*,int ,int ,int *) ;

__attribute__((used)) static HRESULT HTMLElement_get_dispid(DispatchEx *dispex, BSTR name,
        DWORD grfdex, DISPID *pid)
{
    HTMLElement *This = impl_from_DispatchEx(dispex);

    if(This->node.vtbl->get_dispid)
        return This->node.vtbl->get_dispid(&This->node, name, grfdex, pid);

    return DISP_E_UNKNOWNNAME;
}
