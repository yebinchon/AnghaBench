
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int vlc_meta_t ;
typedef int input_thread_t ;
typedef int input_attachment_t ;
typedef int demux_t ;
struct TYPE_4__ {int i_attachment; int p_es_out; TYPE_1__* p_item; int ** attachment_demux; int * attachment; } ;
struct TYPE_3__ {int lock; } ;


 int AppendAttachment (int*,int **,int ***,int,int **,int *) ;
 int DEMUX_GET_ATTACHMENTS ;
 int DEMUX_GET_META ;
 int demux_Control (int *,int ,int ***,...) ;
 int es_out_ControlSetMeta (int ,int *) ;
 TYPE_2__* input_priv (int *) ;
 scalar_t__ unlikely (int ) ;
 int vlc_input_attachment_Delete (int ) ;
 int vlc_meta_Delete (int *) ;
 int * vlc_meta_New () ;
 int vlc_mutex_lock (int *) ;
 int vlc_mutex_unlock (int *) ;

__attribute__((used)) static void InputUpdateMeta( input_thread_t *p_input, demux_t *p_demux )
{
    vlc_meta_t *p_meta = vlc_meta_New();
    if( unlikely(p_meta == ((void*)0)) )
        return;

    demux_Control( p_demux, DEMUX_GET_META, p_meta );



    input_attachment_t **attachment;
    int i_attachment;

    if( !demux_Control( p_demux, DEMUX_GET_ATTACHMENTS,
                        &attachment, &i_attachment ) )
    {
        vlc_mutex_lock( &input_priv(p_input)->p_item->lock );
        if( input_priv(p_input)->i_attachment > 0 )
        {
            int j = 0;
            for( int i = 0; i < input_priv(p_input)->i_attachment; i++ )
            {
                if( input_priv(p_input)->attachment_demux[i] == p_demux )
                    vlc_input_attachment_Delete( input_priv(p_input)->attachment[i] );
                else
                {
                    input_priv(p_input)->attachment[j] = input_priv(p_input)->attachment[i];
                    input_priv(p_input)->attachment_demux[j] = input_priv(p_input)->attachment_demux[i];
                    j++;
                }
            }
            input_priv(p_input)->i_attachment = j;
        }
        AppendAttachment( &input_priv(p_input)->i_attachment, &input_priv(p_input)->attachment, &input_priv(p_input)->attachment_demux,
                          i_attachment, attachment, p_demux );
        vlc_mutex_unlock( &input_priv(p_input)->p_item->lock );
    }

    es_out_ControlSetMeta( input_priv(p_input)->p_es_out, p_meta );
    vlc_meta_Delete( p_meta );
}
