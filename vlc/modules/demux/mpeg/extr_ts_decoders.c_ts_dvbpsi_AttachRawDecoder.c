
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {void* p_cb_data; int pf_callback; int pf_gather; } ;
typedef TYPE_1__ ts_dvbpsi_rawtable_decoder_t ;
typedef int ts_dvbpsi_rawsections_callback_t ;
struct TYPE_7__ {int p_decoder; } ;
typedef TYPE_2__ dvbpsi_t ;


 int DVBPSI_DECODER (TYPE_1__*) ;
 TYPE_1__* dvbpsi_decoder_new (int *,int,int,int) ;
 int ts_dvbpsi_RawDecoderGatherSections ;

bool ts_dvbpsi_AttachRawDecoder( dvbpsi_t* p_dvbpsi,
                                 ts_dvbpsi_rawsections_callback_t pf_callback,
                                 void *p_cb_data )
{
    if ( p_dvbpsi->p_decoder )
        return 0;

    ts_dvbpsi_rawtable_decoder_t *p_decoder = dvbpsi_decoder_new( ((void*)0), 4096, 1, sizeof(*p_decoder) );
    if ( p_decoder == ((void*)0) )
        return 0;
    p_dvbpsi->p_decoder = DVBPSI_DECODER(p_decoder);

    p_decoder->pf_gather = ts_dvbpsi_RawDecoderGatherSections;
    p_decoder->pf_callback = pf_callback;
    p_decoder->p_cb_data = p_cb_data;

    return 1;
}
