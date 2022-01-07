
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_7__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int vlc_meta_t ;
typedef int module_t ;
typedef int input_thread_t ;
struct TYPE_10__ {int * p_demux; } ;
typedef TYPE_2__ input_source_t ;
typedef int demux_t ;
struct TYPE_11__ {scalar_t__ i_attachments; int attachments; scalar_t__ p_meta; TYPE_1__* p_item; } ;
typedef TYPE_3__ demux_meta_t ;
struct TYPE_12__ {TYPE_1__* p_item; int attachment_demux; int attachment; int i_attachment; } ;
struct TYPE_9__ {int lock; } ;


 int AppendAttachment (int *,int *,int *,scalar_t__,int ,int *) ;
 int DEMUX_GET_META ;
 int DEMUX_HAS_UNSUPPORTED_META ;
 scalar_t__ demux_Control (int *,int ,int*) ;
 TYPE_7__* input_priv (int *) ;
 int * module_need (TYPE_3__*,char*,int *,int) ;
 int module_unneed (int *,int *) ;
 scalar_t__ unlikely (int ) ;
 TYPE_3__* vlc_custom_create (int *,int,char*) ;
 int vlc_meta_Delete (scalar_t__) ;
 int vlc_meta_Merge (int*,scalar_t__) ;
 int vlc_mutex_lock (int *) ;
 int vlc_mutex_unlock (int *) ;
 int vlc_object_delete (TYPE_3__*) ;

__attribute__((used)) static void InputSourceMeta( input_thread_t *p_input,
                             input_source_t *p_source, vlc_meta_t *p_meta )
{
    demux_t *p_demux = p_source->p_demux;




    bool has_meta = 0;


    if( !demux_Control( p_demux, DEMUX_GET_META, p_meta ) )
        has_meta = 1;

    bool has_unsupported;
    if( demux_Control( p_demux, DEMUX_HAS_UNSUPPORTED_META, &has_unsupported ) )
        has_unsupported = 1;



    if( has_meta && !has_unsupported )
        return;

    demux_meta_t *p_demux_meta =
        vlc_custom_create( p_input, sizeof( *p_demux_meta ), "demux meta" );
    if( unlikely(p_demux_meta == ((void*)0)) )
        return;
    p_demux_meta->p_item = input_priv(p_input)->p_item;

    module_t *p_id3 = module_need( p_demux_meta, "meta reader", ((void*)0), 0 );
    if( p_id3 )
    {
        if( p_demux_meta->p_meta )
        {
            vlc_meta_Merge( p_meta, p_demux_meta->p_meta );
            vlc_meta_Delete( p_demux_meta->p_meta );
        }

        if( p_demux_meta->i_attachments > 0 )
        {
            vlc_mutex_lock( &input_priv(p_input)->p_item->lock );
            AppendAttachment( &input_priv(p_input)->i_attachment, &input_priv(p_input)->attachment, &input_priv(p_input)->attachment_demux,
                              p_demux_meta->i_attachments, p_demux_meta->attachments, p_demux);
            vlc_mutex_unlock( &input_priv(p_input)->p_item->lock );
        }
        module_unneed( p_demux, p_id3 );
    }
    vlc_object_delete(p_demux_meta);
}
