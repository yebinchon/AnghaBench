
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {TYPE_2__* sys; } ;
typedef TYPE_1__ vout_display_t ;
struct TYPE_8__ {scalar_t__ is_tty; int * picture; } ;
typedef TYPE_2__ vout_display_sys_t ;


 int CloseDisplay (TYPE_1__*) ;
 int TtyExit (TYPE_1__*) ;
 int free (TYPE_2__*) ;
 int picture_Release (int *) ;

__attribute__((used)) static void Close(vout_display_t *vd)
{
    vout_display_sys_t *sys = vd->sys;

    if (sys->picture != ((void*)0))
        picture_Release(sys->picture);

    CloseDisplay(vd);

    if (sys->is_tty)
        TtyExit(vd);

    free(sys);
}
