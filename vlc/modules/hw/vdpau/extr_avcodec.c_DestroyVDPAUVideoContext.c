
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct video_context_private {int vdp; int ** pool; } ;


 int vdp_release_x11 (int ) ;
 int vlc_vdp_video_destroy (int *) ;

__attribute__((used)) static void DestroyVDPAUVideoContext(void *private)
{
    struct video_context_private *vctx_priv = private;
    for (unsigned i = 0; vctx_priv->pool[i] != ((void*)0); i++)
        vlc_vdp_video_destroy(vctx_priv->pool[i]);
    vdp_release_x11(vctx_priv->vdp);
}
