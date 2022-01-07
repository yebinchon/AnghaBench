
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int es_out_t ;
struct TYPE_5__ {int fmt_out; int * p_dec_record; int * p_clock; TYPE_1__* p_pgrm; int * p_dec; } ;
typedef TYPE_2__ es_out_id_t ;
struct TYPE_4__ {int * p_master_clock; } ;


 int VLC_UNUSED (int *) ;
 int es_format_Clean (int *) ;
 int input_DecoderDelete (int *) ;
 int vlc_clock_Delete (int *) ;

__attribute__((used)) static void EsOutDestroyDecoder( es_out_t *out, es_out_id_t *p_es )
{
    VLC_UNUSED(out);

    if( !p_es->p_dec )
        return;

    input_DecoderDelete( p_es->p_dec );
    p_es->p_dec = ((void*)0);
    if( p_es->p_pgrm->p_master_clock == p_es->p_clock )
        p_es->p_pgrm->p_master_clock = ((void*)0);
    vlc_clock_Delete( p_es->p_clock );
    p_es->p_clock = ((void*)0);

    if( p_es->p_dec_record )
    {
        input_DecoderDelete( p_es->p_dec_record );
        p_es->p_dec_record = ((void*)0);
    }

    es_format_Clean( &p_es->fmt_out );
}
