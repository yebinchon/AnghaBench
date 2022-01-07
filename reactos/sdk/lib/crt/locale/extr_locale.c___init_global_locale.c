
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {TYPE_1__* locinfo; } ;
struct TYPE_3__ {int * lc_handle; int mb_cur_max; int lc_collate_cp; int lc_codepage; } ;


 unsigned int LC_MAX ;
 unsigned int LC_MIN ;
 int LOCK_LOCALE ;
 int MSVCRT___lc_collate_cp ;
 int * MSVCRT___lc_handle ;
 scalar_t__ MSVCRT__create_locale (int ,char*) ;
 TYPE_2__* MSVCRT_locale ;
 int UNLOCK_LOCALE ;
 int _MB_CP_ANSI ;
 int __lc_codepage ;
 int __mb_cur_max ;
 int _setmbcp (int ) ;
 scalar_t__ global_locale ;

void __init_global_locale()
{
    unsigned i;

    LOCK_LOCALE;

    if(global_locale)
        return;
    global_locale = MSVCRT__create_locale(0, "C");

    __lc_codepage = MSVCRT_locale->locinfo->lc_codepage;
    MSVCRT___lc_collate_cp = MSVCRT_locale->locinfo->lc_collate_cp;
    __mb_cur_max = MSVCRT_locale->locinfo->mb_cur_max;
    for(i=LC_MIN; i<=LC_MAX; i++)
        MSVCRT___lc_handle[i] = MSVCRT_locale->locinfo->lc_handle[i];
    _setmbcp(_MB_CP_ANSI);
    UNLOCK_LOCALE;
}
