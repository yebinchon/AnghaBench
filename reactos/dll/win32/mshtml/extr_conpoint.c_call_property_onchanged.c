
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {size_t sinks_size; TYPE_1__* sinks; } ;
struct TYPE_4__ {scalar_t__ propnotif; } ;
typedef size_t DWORD ;
typedef int DISPID ;
typedef int ConnectionPointContainer ;
typedef TYPE_2__ ConnectionPoint ;


 int FALSE ;
 int IID_IPropertyNotifySink ;
 int IPropertyNotifySink_OnChanged (scalar_t__,int ) ;
 TYPE_2__* get_cp (int *,int *,int ) ;

void call_property_onchanged(ConnectionPointContainer *container, DISPID dispid)
{
    ConnectionPoint *cp;
    DWORD i;

    cp = get_cp(container, &IID_IPropertyNotifySink, FALSE);
    if(!cp)
        return;

    for(i=0; i<cp->sinks_size; i++) {
        if(cp->sinks[i].propnotif)
            IPropertyNotifySink_OnChanged(cp->sinks[i].propnotif, dispid);
    }
}
