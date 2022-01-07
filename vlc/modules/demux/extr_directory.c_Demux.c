
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int input_item_node_t ;
struct TYPE_4__ {int out; int s; int p_input_item; } ;
typedef TYPE_1__ demux_t ;


 int ES_OUT_POST_SUBNODE ;
 int VLC_EGENERIC ;
 int VLC_SUCCESS ;
 scalar_t__ es_out_Control (int ,int ,int *) ;
 int * input_item_node_Create (int ) ;
 int input_item_node_Delete (int *) ;
 int msg_Warn (TYPE_1__*,char*) ;
 scalar_t__ vlc_stream_ReadDir (int ,int *) ;

__attribute__((used)) static int Demux( demux_t *p_demux )
{
    input_item_node_t *p_node = input_item_node_Create( p_demux->p_input_item );

    if( vlc_stream_ReadDir( p_demux->s, p_node ) )
    {
        msg_Warn( p_demux, "unable to read directory" );
        input_item_node_Delete( p_node );
        return VLC_EGENERIC;
    }

    if (es_out_Control(p_demux->out, ES_OUT_POST_SUBNODE, p_node))
        input_item_node_Delete(p_node);

    return VLC_SUCCESS;
}
