
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ char_u ;
struct TYPE_2__ {int dying; } ;


 int EMSG (int ) ;
 int FAIL ;
 scalar_t__ NUL ;
 int OK ;
 int TRUE ;
 int _ (char*) ;
 scalar_t__ e_opendisp ;
 TYPE_1__ gui ;
 scalar_t__* mch_getenv (scalar_t__*) ;

int
gui_mch_early_init_check(void)
{
    char_u *p;


    p = mch_getenv((char_u *)"DISPLAY");
    if (p == ((void*)0) || *p == NUL)
    {
 gui.dying = TRUE;
 EMSG(_((char *)e_opendisp));
 return FAIL;
    }
    return OK;
}
