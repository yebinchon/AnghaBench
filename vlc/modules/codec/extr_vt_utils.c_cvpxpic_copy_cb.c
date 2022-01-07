
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct picture_context_t {int dummy; } ;
struct cvpxpic_ctx {int rc; } ;
typedef struct picture_context_t picture_context_t ;


 int vlc_atomic_rc_inc (int *) ;

__attribute__((used)) static picture_context_t *
cvpxpic_copy_cb(struct picture_context_t *opaque)
{
    struct cvpxpic_ctx *ctx = (struct cvpxpic_ctx *)opaque;
    vlc_atomic_rc_inc(&ctx->rc);
    return opaque;
}
