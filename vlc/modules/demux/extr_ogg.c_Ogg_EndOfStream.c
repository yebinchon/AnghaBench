
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {TYPE_3__* p_sys; } ;
typedef TYPE_2__ demux_t ;
struct TYPE_6__ {scalar_t__ minor; scalar_t__ major; } ;
struct TYPE_8__ {int i_streams; int b_preparsing_done; int b_es_created; int i_attachments; int i_seekpoints; scalar_t__* pp_seekpoints; scalar_t__* attachments; int * p_meta; TYPE_1__ skeleton; int * pp_stream; scalar_t__ i_bitrate; } ;
typedef TYPE_3__ demux_sys_t ;


 int Ogg_LogicalStreamDelete (TYPE_2__*,int ) ;
 int TAB_CLEAN (int,scalar_t__*) ;
 int free (int *) ;
 int vlc_input_attachment_Delete (scalar_t__) ;
 int vlc_meta_Delete (int *) ;
 int vlc_seekpoint_Delete (scalar_t__) ;

__attribute__((used)) static void Ogg_EndOfStream( demux_t *p_demux )
{
    demux_sys_t *p_ogg = p_demux->p_sys ;
    int i_stream;

    for( i_stream = 0 ; i_stream < p_ogg->i_streams; i_stream++ )
        Ogg_LogicalStreamDelete( p_demux, p_ogg->pp_stream[i_stream] );
    free( p_ogg->pp_stream );


    p_ogg->i_bitrate = 0;
    p_ogg->i_streams = 0;
    p_ogg->pp_stream = ((void*)0);
    p_ogg->skeleton.major = 0;
    p_ogg->skeleton.minor = 0;
    p_ogg->b_preparsing_done = 0;
    p_ogg->b_es_created = 0;


    if( p_ogg->p_meta )
        vlc_meta_Delete( p_ogg->p_meta );
    p_ogg->p_meta = ((void*)0);

    for(int i=0; i<p_ogg->i_attachments; i++)
        vlc_input_attachment_Delete( p_ogg->attachments[i] );
    TAB_CLEAN(p_ogg->i_attachments, p_ogg->attachments);

    for ( int i=0; i < p_ogg->i_seekpoints; i++ )
    {
        if ( p_ogg->pp_seekpoints[i] )
            vlc_seekpoint_Delete( p_ogg->pp_seekpoints[i] );
    }
    TAB_CLEAN( p_ogg->i_seekpoints, p_ogg->pp_seekpoints );
}
