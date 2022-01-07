
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {int b_packetized; int i_cat; } ;
typedef TYPE_1__ es_format_t ;
typedef int demux_t ;
struct TYPE_10__ {int p_module; int fmt_out; TYPE_1__ fmt_in; int * pf_packetize; int * pf_decode; } ;
typedef TYPE_2__ decoder_t ;


 int es_format_Clean (TYPE_1__*) ;
 int es_format_Init (int *,int ,int ) ;
 int module_need (TYPE_2__*,char*,int *,int) ;
 int msg_Err (int *,char*,char const*) ;
 TYPE_2__* vlc_custom_create (int *,int,char*) ;
 int vlc_object_delete (TYPE_2__*) ;

decoder_t *demux_PacketizerNew( demux_t *p_demux, es_format_t *p_fmt, const char *psz_msg )
{
    decoder_t *p_packetizer;
    p_packetizer = vlc_custom_create( p_demux, sizeof( *p_packetizer ),
                                      "demux packetizer" );
    if( !p_packetizer )
    {
        es_format_Clean( p_fmt );
        return ((void*)0);
    }
    p_fmt->b_packetized = 0;

    p_packetizer->pf_decode = ((void*)0);
    p_packetizer->pf_packetize = ((void*)0);

    p_packetizer->fmt_in = *p_fmt;
    es_format_Init( &p_packetizer->fmt_out, p_fmt->i_cat, 0 );

    p_packetizer->p_module = module_need( p_packetizer, "packetizer", ((void*)0), 0 );
    if( !p_packetizer->p_module )
    {
        es_format_Clean( p_fmt );
        vlc_object_delete(p_packetizer);
        msg_Err( p_demux, "cannot find packetizer for %s", psz_msg );
        return ((void*)0);
    }

    return p_packetizer;
}
