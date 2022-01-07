
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ cdtpid; scalar_t__ tdtpid; scalar_t__ eitpid; int handle; } ;
typedef TYPE_1__ ts_si_t ;
typedef int demux_t ;


 int PIDRelease (int *,scalar_t__) ;
 int dvbpsi_DetachDemux (int ) ;
 scalar_t__ dvbpsi_decoder_present (int ) ;
 int dvbpsi_delete (int ) ;
 int free (TYPE_1__*) ;

void ts_si_Del( demux_t *p_demux, ts_si_t *si )
{
    if( dvbpsi_decoder_present( si->handle ) )
        dvbpsi_DetachDemux( si->handle );
    dvbpsi_delete( si->handle );
    if( si->eitpid )
        PIDRelease( p_demux, si->eitpid );
    if( si->tdtpid )
        PIDRelease( p_demux, si->tdtpid );
    if( si->cdtpid )
        PIDRelease( p_demux, si->cdtpid );
    free( si );
}
