
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {TYPE_1__* location; } ;
struct TYPE_7__ {int IHTMLLocation_iface; } ;
typedef TYPE_1__ HTMLLocation ;
typedef TYPE_2__ HTMLInnerWindow ;
typedef int HRESULT ;


 scalar_t__ FAILED (int ) ;
 int HTMLLocation_Create (TYPE_2__*,TYPE_1__**) ;
 int IHTMLLocation_AddRef (int *) ;
 int S_OK ;

__attribute__((used)) static HRESULT get_location(HTMLInnerWindow *This, HTMLLocation **ret)
{
    if(This->location) {
        IHTMLLocation_AddRef(&This->location->IHTMLLocation_iface);
    }else {
        HRESULT hres;

        hres = HTMLLocation_Create(This, &This->location);
        if(FAILED(hres))
            return hres;
    }

    *ret = This->location;
    return S_OK;
}
