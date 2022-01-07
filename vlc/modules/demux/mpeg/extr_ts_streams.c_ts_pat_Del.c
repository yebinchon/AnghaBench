
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_4__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int i_size; int * p_elems; } ;
struct TYPE_5__ {TYPE_4__ programs; int handle; } ;
typedef TYPE_1__ ts_pat_t ;
typedef int demux_t ;


 int ARRAY_RESET (TYPE_4__) ;
 int PIDRelease (int *,int ) ;
 scalar_t__ dvbpsi_decoder_present (int ) ;
 int dvbpsi_delete (int ) ;
 int dvbpsi_pat_detach (int ) ;
 int free (TYPE_1__*) ;

void ts_pat_Del( demux_t *p_demux, ts_pat_t *pat )
{
    if( dvbpsi_decoder_present( pat->handle ) )
        dvbpsi_pat_detach( pat->handle );
    dvbpsi_delete( pat->handle );
    for( int i=0; i<pat->programs.i_size; i++ )
        PIDRelease( p_demux, pat->programs.p_elems[i] );
    ARRAY_RESET( pat->programs );
    free( pat );
}
