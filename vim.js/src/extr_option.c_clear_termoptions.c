
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ starting; } ;


 int FALSE ;
 scalar_t__ TRUE ;
 scalar_t__ can_end_termcap_mode (int ) ;
 int clear_xterm_clip () ;
 int free_termoptions () ;
 TYPE_1__ gui ;
 int mch_restore_title (int) ;
 int mch_setmouse (int ) ;
 int stoptermcap () ;

void
clear_termoptions()
{
 stoptermcap();

    free_termoptions();
}
