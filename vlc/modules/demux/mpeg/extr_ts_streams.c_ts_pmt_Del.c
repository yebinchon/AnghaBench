
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_8__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_12__ {int i_size; scalar_t__* p_elems; } ;
struct TYPE_9__ {TYPE_8__ objects; } ;
struct TYPE_10__ {int i_number; TYPE_1__ od; scalar_t__ iod; scalar_t__ p_si_sdt_pid; scalar_t__ p_atsc_si_basepid; TYPE_8__ e_streams; int handle; } ;
typedef TYPE_2__ ts_pmt_t ;
struct TYPE_11__ {int out; } ;
typedef TYPE_3__ demux_t ;


 int ARRAY_RESET (TYPE_8__) ;
 int ES_OUT_DEL_GROUP ;
 int ODFree (scalar_t__) ;
 int PIDRelease (TYPE_3__*,scalar_t__) ;
 scalar_t__ dvbpsi_decoder_present (int ) ;
 int dvbpsi_delete (int ) ;
 int dvbpsi_pmt_detach (int ) ;
 int es_out_Control (int ,int ,int) ;
 int free (TYPE_2__*) ;

void ts_pmt_Del( demux_t *p_demux, ts_pmt_t *pmt )
{
    if( dvbpsi_decoder_present( pmt->handle ) )
        dvbpsi_pmt_detach( pmt->handle );
    dvbpsi_delete( pmt->handle );
    for( int i=0; i<pmt->e_streams.i_size; i++ )
        PIDRelease( p_demux, pmt->e_streams.p_elems[i] );
    ARRAY_RESET( pmt->e_streams );
    if( pmt->p_atsc_si_basepid )
        PIDRelease( p_demux, pmt->p_atsc_si_basepid );
    if( pmt->p_si_sdt_pid )
        PIDRelease( p_demux, pmt->p_si_sdt_pid );
    if( pmt->iod )
        ODFree( pmt->iod );
    for( int i=0; i<pmt->od.objects.i_size; i++ )
        ODFree( pmt->od.objects.p_elems[i] );
    ARRAY_RESET( pmt->od.objects );
    if( pmt->i_number > -1 )
        es_out_Control( p_demux->out, ES_OUT_DEL_GROUP, pmt->i_number );

    free( pmt );
}
