
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {TYPE_1__* p_si; } ;
struct TYPE_8__ {scalar_t__ type; TYPE_2__ u; } ;
typedef TYPE_3__ ts_pid_t ;
struct TYPE_6__ {int handle; } ;


 int SINewTableCallBack ;
 scalar_t__ TYPE_SI ;
 int dvbpsi_AttachDemux (int ,int ,TYPE_3__*) ;
 scalar_t__ dvbpsi_decoder_present (int ) ;

bool ts_attach_SI_Tables_Decoders( ts_pid_t *p_pid )
{
    if( p_pid->type != TYPE_SI )
        return 0;

    if( dvbpsi_decoder_present( p_pid->u.p_si->handle ) )
        return 1;

    return dvbpsi_AttachDemux( p_pid->u.p_si->handle, SINewTableCallBack, p_pid );
}
