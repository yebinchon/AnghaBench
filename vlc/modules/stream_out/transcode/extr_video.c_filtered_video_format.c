
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_5__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int video_format_t ;
struct TYPE_6__ {int const* p_f_chain; int const* p_conv_nonstatic; int const* p_conv_static; int const* p_uf_chain; int const* p_final_conv_static; } ;
typedef TYPE_1__ sout_stream_id_sys_t ;
struct TYPE_7__ {int const format; } ;
typedef TYPE_2__ picture_t ;
typedef int filter_chain_t ;
struct TYPE_8__ {int const video; } ;


 size_t ARRAY_SIZE (int const**) ;
 int assert (int) ;
 TYPE_5__* filter_chain_GetFmtOut (int const*) ;

__attribute__((used)) static const video_format_t* filtered_video_format( sout_stream_id_sys_t *id,
                                                  picture_t *p_pic )
{
    assert( id && p_pic );
    const filter_chain_t * chains[] =
    {
        id->p_final_conv_static,
        id->p_uf_chain,
        id->p_conv_static,
        id->p_conv_nonstatic,
        id->p_f_chain,
    };
    for( size_t i=0; i<ARRAY_SIZE(chains); i++ )
    {
        if( chains[i] )
            return &filter_chain_GetFmtOut( chains[i] )->video;
    }
    return &p_pic->format;
}
