
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct vlc_demux_private {int module; } ;
struct TYPE_5__ {int * s; int psz_name; int psz_filepath; } ;
typedef TYPE_1__ demux_t ;


 int assert (int ) ;
 int free (int ) ;
 int module_unneed (TYPE_1__*,int ) ;
 int vlc_stream_Delete (int *) ;
 struct vlc_demux_private* vlc_stream_Private (TYPE_1__*) ;

__attribute__((used)) static void demux_DestroyDemux(demux_t *demux)
{
    struct vlc_demux_private *priv = vlc_stream_Private(demux);

    module_unneed(demux, priv->module);
    free(demux->psz_filepath);
    free(demux->psz_name);

    assert(demux->s != ((void*)0));
    vlc_stream_Delete(demux->s);
}
