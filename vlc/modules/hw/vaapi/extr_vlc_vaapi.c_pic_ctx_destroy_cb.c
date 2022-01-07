
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vaapi_pic_ctx {int picref; } ;
struct picture_context_t {int dummy; } ;


 int free (struct picture_context_t*) ;
 int picture_Release (int ) ;

__attribute__((used)) static void
pic_ctx_destroy_cb(struct picture_context_t *opaque)
{
    struct vaapi_pic_ctx *ctx = (struct vaapi_pic_ctx *) opaque;
    picture_Release(ctx->picref);
    free(opaque);
}
