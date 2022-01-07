
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int WORD ;
struct TYPE_3__ {int mdiFlags; int sbRecalc; } ;
typedef TYPE_1__ MDICLIENTINFO ;
typedef int HWND ;


 int MDIF_NEEDUPDATE ;
 int PostMessageA (int ,int ,int ,int ) ;
 int WM_MDICALCCHILDSCROLL ;

__attribute__((used)) static void MDI_PostUpdate(HWND hwnd, MDICLIENTINFO* ci, WORD recalc)
{
    if( !(ci->mdiFlags & MDIF_NEEDUPDATE) )
    {
 ci->mdiFlags |= MDIF_NEEDUPDATE;
 PostMessageA( hwnd, WM_MDICALCCHILDSCROLL, 0, 0);
    }
    ci->sbRecalc = recalc;
}
