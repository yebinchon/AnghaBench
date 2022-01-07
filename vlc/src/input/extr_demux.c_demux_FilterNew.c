
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_1__ ;


struct vlc_demux_private {int * module; } ;
struct TYPE_9__ {int * out; int * psz_filepath; int * psz_location; int * psz_url; int * psz_name; int * p_sys; int * p_input_item; struct TYPE_9__* p_next; } ;
typedef TYPE_1__ demux_t ;


 int VLC_OBJECT (TYPE_1__*) ;
 int demux_DestroyDemux ;
 int * module_need (TYPE_1__*,char*,char const*,int ) ;
 int stream_CommonDelete (TYPE_1__*) ;
 scalar_t__ unlikely (int ) ;
 TYPE_1__* vlc_stream_CustomNew (int ,int ,int,char*) ;
 struct vlc_demux_private* vlc_stream_Private (TYPE_1__*) ;

__attribute__((used)) static demux_t *demux_FilterNew( demux_t *p_next, const char *p_name )
{
    struct vlc_demux_private *priv;
    demux_t *p_demux = vlc_stream_CustomNew(VLC_OBJECT(p_next),
                                            demux_DestroyDemux, sizeof (*priv),
                                            "demux filter");
    if (unlikely(p_demux == ((void*)0)))
        return ((void*)0);

    priv = vlc_stream_Private(p_demux);
    p_demux->p_next = p_next;
    p_demux->p_input_item = ((void*)0);
    p_demux->p_sys = ((void*)0);
    p_demux->psz_name = ((void*)0);
    p_demux->psz_url = ((void*)0);
    p_demux->psz_location = ((void*)0);
    p_demux->psz_filepath = ((void*)0);
    p_demux->out = ((void*)0);

    priv->module = module_need(p_demux, "demux_filter", p_name,
                               p_name != ((void*)0));
    if (priv->module == ((void*)0))
        goto error;

    return p_demux;
error:
    stream_CommonDelete( p_demux );
    return ((void*)0);
}
