
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_8__ {TYPE_2__* p_pmt; TYPE_1__* p_pat; } ;
struct TYPE_9__ {scalar_t__ type; TYPE_3__ u; } ;
typedef TYPE_4__ ts_pid_t ;
struct TYPE_7__ {int handle; } ;
struct TYPE_6__ {int handle; } ;


 scalar_t__ TYPE_PAT ;
 scalar_t__ TYPE_PMT ;
 int dvbpsi_packet_push (int ,int *) ;

void ts_psi_Packet_Push( ts_pid_t *p_pid, const uint8_t *p_pktbuffer )
{
    if( p_pid->type == TYPE_PAT )
        dvbpsi_packet_push( p_pid->u.p_pat->handle, (uint8_t *) p_pktbuffer );
    else if( p_pid->type == TYPE_PMT )
        dvbpsi_packet_push( p_pid->u.p_pmt->handle, (uint8_t *) p_pktbuffer );
}
