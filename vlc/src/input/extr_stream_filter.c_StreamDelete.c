
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct vlc_stream_filter_private {int module; } ;
struct TYPE_5__ {int psz_filepath; int s; } ;
typedef TYPE_1__ stream_t ;


 int free (int ) ;
 int module_unneed (TYPE_1__*,int ) ;
 int vlc_stream_Delete (int ) ;
 struct vlc_stream_filter_private* vlc_stream_Private (TYPE_1__*) ;

__attribute__((used)) static void StreamDelete(stream_t *s)
{
    struct vlc_stream_filter_private *priv = vlc_stream_Private(s);

    module_unneed(s, priv->module);
    vlc_stream_Delete(s->s);
    free(s->psz_filepath);
}
