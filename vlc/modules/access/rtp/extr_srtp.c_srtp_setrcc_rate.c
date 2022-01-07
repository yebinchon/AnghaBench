
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ uint16_t ;
struct TYPE_3__ {scalar_t__ rtp_rcc; } ;
typedef TYPE_1__ srtp_session_t ;


 int assert (int) ;

void srtp_setrcc_rate (srtp_session_t *s, uint16_t rate)
{
    assert (rate != 0);
    s->rtp_rcc = rate;
}
