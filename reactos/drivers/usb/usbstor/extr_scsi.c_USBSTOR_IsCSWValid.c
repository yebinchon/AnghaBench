
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ Signature; scalar_t__ Tag; } ;
struct TYPE_4__ {TYPE_3__ csw; } ;
typedef TYPE_1__* PIRP_CONTEXT ;
typedef int BOOLEAN ;


 scalar_t__ CSW_SIGNATURE ;
 int DPRINT1 (char*,scalar_t__,scalar_t__) ;
 int FALSE ;
 scalar_t__ PtrToUlong (TYPE_3__*) ;
 int TRUE ;

__attribute__((used)) static
BOOLEAN
USBSTOR_IsCSWValid(
    PIRP_CONTEXT Context)
{
    if (Context->csw.Signature != CSW_SIGNATURE)
    {
        DPRINT1("[USBSTOR] Expected Signature %x but got %x\n", CSW_SIGNATURE, Context->csw.Signature);
        return FALSE;
    }

    if (Context->csw.Tag != PtrToUlong(&Context->csw))
    {
        DPRINT1("[USBSTOR] Expected Tag %Ix but got %x\n", PtrToUlong(&Context->csw), Context->csw.Tag);
        return FALSE;
    }

    return TRUE;
}
