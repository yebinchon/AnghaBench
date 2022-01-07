
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cvpxpic_ctx {int nb_fields; int on_released_data; int cvpx; int (* on_released_cb ) (int ,int ,int ) ;int rc; } ;
typedef int picture_context_t ;


 int CFRelease (int ) ;
 int free (int *) ;
 int stub1 (int ,int ,int ) ;
 scalar_t__ vlc_atomic_rc_dec (int *) ;

__attribute__((used)) static void
cvpxpic_destroy_cb(picture_context_t *opaque)
{
    struct cvpxpic_ctx *ctx = (struct cvpxpic_ctx *)opaque;

    if (vlc_atomic_rc_dec(&ctx->rc))
    {
        CFRelease(ctx->cvpx);
        if (ctx->on_released_cb)
            ctx->on_released_cb(ctx->cvpx, ctx->on_released_data, ctx->nb_fields);
        free(opaque);
    }
}
