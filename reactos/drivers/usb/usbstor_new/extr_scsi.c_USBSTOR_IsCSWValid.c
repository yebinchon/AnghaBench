
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ ULONG ;
struct TYPE_5__ {TYPE_1__* csw; } ;
struct TYPE_4__ {scalar_t__ Signature; scalar_t__ Tag; int Status; } ;
typedef TYPE_2__* PIRP_CONTEXT ;
typedef int BOOLEAN ;


 scalar_t__ CSW_SIGNATURE ;
 int DPRINT1 (char*,int,...) ;
 int FALSE ;
 int TRUE ;

BOOLEAN
USBSTOR_IsCSWValid(
    PIRP_CONTEXT Context)
{



    if (Context->csw->Signature != CSW_SIGNATURE)
    {
        DPRINT1("[USBSTOR] Expected Signature %x but got %x\n", CSW_SIGNATURE, Context->csw->Signature);
        return FALSE;
    }

    if (Context->csw->Tag != (ULONG)Context->csw)
    {
        DPRINT1("[USBSTOR] Expected Tag %x but got %x\n", (ULONG)Context->csw, Context->csw->Tag);
        return FALSE;
    }

    if (Context->csw->Status != 0x00)
    {
        DPRINT1("[USBSTOR] Expected Status 0x00 but got %x\n", Context->csw->Status);
        return FALSE;
    }




    return TRUE;

}
