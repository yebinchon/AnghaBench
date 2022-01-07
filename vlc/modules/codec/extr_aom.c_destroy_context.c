
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vlc_object_t ;
typedef int aom_codec_ctx_t ;


 int AOM_ERR (int *,int *,char*) ;
 scalar_t__ aom_codec_destroy (int *) ;

__attribute__((used)) static void destroy_context(vlc_object_t *p_this, aom_codec_ctx_t *context)
{
    if (aom_codec_destroy(context))
        AOM_ERR(p_this, context, "Failed to destroy codec context");
}
