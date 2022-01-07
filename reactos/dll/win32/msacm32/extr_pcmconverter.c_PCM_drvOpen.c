
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ fccType; scalar_t__ fccComp; } ;
typedef TYPE_1__* PACMDRVOPENDESCW ;
typedef int LPCSTR ;
typedef int DWORD ;


 scalar_t__ ACMDRIVERDETAILS_FCCCOMP_UNDEFINED ;
 scalar_t__ ACMDRIVERDETAILS_FCCTYPE_AUDIOCODEC ;
 int TRACE (char*,int ,TYPE_1__*) ;

__attribute__((used)) static DWORD PCM_drvOpen(LPCSTR str, PACMDRVOPENDESCW adod)
{
    TRACE("(%p, %p)\n", str, adod);

    return (adod == ((void*)0)) ||
 (adod->fccType == ACMDRIVERDETAILS_FCCTYPE_AUDIOCODEC &&
  adod->fccComp == ACMDRIVERDETAILS_FCCCOMP_UNDEFINED);
}
