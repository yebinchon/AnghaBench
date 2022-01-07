
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int cLockObj; int h; } ;
struct TYPE_6__ {TYPE_1__ head; int spkf; struct TYPE_6__* pklPrev; struct TYPE_6__* pklNext; int dwKL_Flags; } ;
typedef TYPE_2__* PKL ;
typedef int BOOL ;


 int FALSE ;
 int KLF_UNLOAD ;
 int TRUE ;
 int TYPE_KBDLAYOUT ;
 int UnloadKbdFile (int ) ;
 int UserDeleteObject (int ,int ) ;
 TYPE_2__* gspklBaseLayout ;

BOOL
UserUnloadKbl(PKL pKl)
{


    if (pKl == gspklBaseLayout)
    {
        if (pKl->pklNext == pKl->pklPrev)
        {

            return FALSE;
        }


        gspklBaseLayout = pKl->pklNext;
    }

    if (pKl->head.cLockObj > 1)
    {

        pKl->dwKL_Flags |= KLF_UNLOAD;
        return FALSE;
    }


    pKl->pklPrev->pklNext = pKl->pklNext;
    pKl->pklNext->pklPrev = pKl->pklPrev;
    UnloadKbdFile(pKl->spkf);
    UserDeleteObject(pKl->head.h, TYPE_KBDLAYOUT);
    return TRUE;
}
