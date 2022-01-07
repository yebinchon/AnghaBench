
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_5__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_7__ {TYPE_1__* p_psip; } ;
struct TYPE_8__ {scalar_t__ type; TYPE_2__ u; } ;
typedef TYPE_3__ ts_pid_t ;
struct TYPE_9__ {scalar_t__ p_decoder; } ;
struct TYPE_6__ {TYPE_5__* handle; } ;


 scalar_t__ TYPE_PSIP ;
 int dvbpsi_packet_push (TYPE_5__*,int *) ;
 scalar_t__ likely (int) ;

void ts_psip_Packet_Push( ts_pid_t *p_pid, const uint8_t *p_pktbuffer )
{
    if( p_pid->u.p_psip->handle->p_decoder && likely(p_pid->type == TYPE_PSIP) )
        dvbpsi_packet_push( p_pid->u.p_psip->handle, (uint8_t *) p_pktbuffer );
}
