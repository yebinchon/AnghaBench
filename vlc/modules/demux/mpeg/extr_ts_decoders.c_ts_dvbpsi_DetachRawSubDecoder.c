
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint16_t ;
struct TYPE_7__ {scalar_t__ p_decoder; } ;
typedef TYPE_1__ dvbpsi_t ;
typedef int dvbpsi_demux_t ;
struct TYPE_8__ {int p_decoder; } ;
typedef TYPE_2__ dvbpsi_demux_subdec_t ;


 int dvbpsi_DeleteDemuxSubDecoder (TYPE_2__*) ;
 int dvbpsi_DetachDemuxSubDecoder (int *,TYPE_2__*) ;
 TYPE_2__* dvbpsi_demuxGetSubDec (int *,int ,int ) ;

void ts_dvbpsi_DetachRawSubDecoder( dvbpsi_t *p_dvbpsi, uint8_t i_table_id, uint16_t i_extension )
{
    dvbpsi_demux_t *p_demux = (dvbpsi_demux_t *) p_dvbpsi->p_decoder;

    dvbpsi_demux_subdec_t* p_subdec;
    p_subdec = dvbpsi_demuxGetSubDec( p_demux, i_table_id, i_extension );
    if ( p_subdec == ((void*)0) || !p_subdec->p_decoder )
        return;

    dvbpsi_DetachDemuxSubDecoder( p_demux, p_subdec );
    dvbpsi_DeleteDemuxSubDecoder( p_subdec );
}
