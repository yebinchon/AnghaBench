
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int starting; int in_use; } ;


 scalar_t__ CRV_SENT ;
 scalar_t__ FALSE ;
 int TCIFLUSH ;
 int T_KE ;
 int T_TE ;
 scalar_t__ U7_SENT ;
 int check_for_codes_from_term () ;
 scalar_t__ crv_status ;
 int cursor_on () ;
 scalar_t__ exiting ;
 int fileno (int ) ;
 TYPE_1__ gui ;
 int mch_delay (long,scalar_t__) ;
 int out_flush () ;
 int out_str (int ) ;
 int reset_cterm_colors () ;
 int screen_start () ;
 int screen_stop_highlight () ;
 int stdin ;
 int tcflush (int ,int ) ;
 scalar_t__ termcap_active ;
 scalar_t__ u7_status ;

void
stoptermcap()
{
    screen_stop_highlight();
    reset_cterm_colors();
    if (termcap_active)
    {
 out_str(T_KE);
 out_flush();
 termcap_active = FALSE;
 cursor_on();
 out_str(T_TE);
 screen_start();
 out_flush();
    }
}
