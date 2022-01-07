
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int starting; int in_use; } ;


 scalar_t__ CRV_GET ;
 scalar_t__ TRUE ;
 int T_KS ;
 int T_TI ;
 int check_for_codes_from_term () ;
 scalar_t__ crv_status ;
 scalar_t__ full_screen ;
 TYPE_1__ gui ;
 int may_req_termresponse () ;
 int out_flush () ;
 int out_str (int ) ;
 int screen_start () ;
 scalar_t__ termcap_active ;

void
starttermcap()
{
    if (full_screen && !termcap_active)
    {
 out_str(T_TI);
 out_str(T_KS);
 out_flush();
 termcap_active = TRUE;
 screen_start();
    }
}
