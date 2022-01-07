
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_6__ {TYPE_1__* p_si; } ;
struct TYPE_7__ {scalar_t__ type; TYPE_2__ u; } ;
typedef TYPE_3__ ts_pid_t ;
struct TYPE_5__ {int handle; } ;


 scalar_t__ TYPE_SI ;
 scalar_t__ dvbpsi_decoder_present (int ) ;
 int dvbpsi_packet_push (int ,int *) ;
 scalar_t__ likely (int) ;

void ts_si_Packet_Push( ts_pid_t *p_pid, const uint8_t *p_pktbuffer )
{
    if( likely(p_pid->type == TYPE_SI) &&
        dvbpsi_decoder_present( p_pid->u.p_si->handle ) )
        dvbpsi_packet_push( p_pid->u.p_si->handle, (uint8_t *) p_pktbuffer );
}
