
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint16_t ;
struct TYPE_5__ {void* p_cb_data; int pf_callback; } ;
typedef TYPE_1__ ts_dvbpsi_rawtable_decoder_t ;
typedef int ts_dvbpsi_rawsections_callback_t ;
struct TYPE_6__ {scalar_t__ p_decoder; } ;
typedef TYPE_2__ dvbpsi_t ;
typedef int dvbpsi_demux_t ;
typedef int dvbpsi_demux_subdec_t ;


 int DVBPSI_DECODER (TYPE_1__*) ;
 int dvbpsi_AttachDemuxSubDecoder (int *,int *) ;
 int * dvbpsi_NewDemuxSubDecoder (int ,int ,int ,int ,int ) ;
 int dvbpsi_decoder_delete (int ) ;
 scalar_t__ dvbpsi_decoder_new (int *,int ,int,int) ;
 scalar_t__ dvbpsi_demuxGetSubDec (int *,int ,int ) ;
 int ts_dvbpsi_DetachRawSubDecoder ;
 int ts_dvbpsi_RawSubDecoderGatherSections ;

bool ts_dvbpsi_AttachRawSubDecoder( dvbpsi_t* p_dvbpsi,
                                    uint8_t i_table_id, uint16_t i_extension,
                                    ts_dvbpsi_rawsections_callback_t pf_callback,
                                     void *p_cb_data )
{
    dvbpsi_demux_t *p_demux = (dvbpsi_demux_t*)p_dvbpsi->p_decoder;
    if ( dvbpsi_demuxGetSubDec(p_demux, i_table_id, i_extension) )
        return 0;

    ts_dvbpsi_rawtable_decoder_t *p_decoder;
    p_decoder = (ts_dvbpsi_rawtable_decoder_t *) dvbpsi_decoder_new( ((void*)0), 0, 1, sizeof(*p_decoder) );
    if ( p_decoder == ((void*)0) )
        return 0;


    dvbpsi_demux_subdec_t* p_subdec;
    p_subdec = dvbpsi_NewDemuxSubDecoder( i_table_id, i_extension,
                                          ts_dvbpsi_DetachRawSubDecoder,
                                          ts_dvbpsi_RawSubDecoderGatherSections,
                                          DVBPSI_DECODER(p_decoder) );
    if (p_subdec == ((void*)0))
    {
        dvbpsi_decoder_delete( DVBPSI_DECODER(p_decoder) );
        return 0;
    }


    dvbpsi_AttachDemuxSubDecoder( p_demux, p_subdec );

    p_decoder->pf_callback = pf_callback;
    p_decoder->p_cb_data = p_cb_data;

    return 1;
}
