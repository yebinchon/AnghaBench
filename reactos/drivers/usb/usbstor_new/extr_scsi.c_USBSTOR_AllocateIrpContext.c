
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ cbw; } ;
typedef TYPE_1__* PIRP_CONTEXT ;
typedef scalar_t__ PCBW ;
typedef int IRP_CONTEXT ;


 scalar_t__ AllocateItem (int ,int) ;
 int FreeItem (TYPE_1__*) ;
 int NonPagedPool ;

PIRP_CONTEXT
USBSTOR_AllocateIrpContext()
{
    PIRP_CONTEXT Context;




    Context = (PIRP_CONTEXT)AllocateItem(NonPagedPool, sizeof(IRP_CONTEXT));
    if (!Context)
    {



        return ((void*)0);
    }




    Context->cbw = (PCBW)AllocateItem(NonPagedPool, 512);
    if (!Context->cbw)
    {



        FreeItem(Context);
        return ((void*)0);
    }




    return Context;

}
