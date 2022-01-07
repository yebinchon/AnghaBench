
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cvpxpic_ctx {int cvpx; } ;
typedef int picture_context_t ;


 int CVPixelBufferUnlockBaseAddress (int ,int ) ;
 int cvpxpic_destroy_cb (int *) ;

__attribute__((used)) static void
cvpxpic_destroy_mapped_rw_cb(picture_context_t *opaque)
{
    struct cvpxpic_ctx *ctx = (struct cvpxpic_ctx *)opaque;

    CVPixelBufferUnlockBaseAddress(ctx->cvpx, 0);
    cvpxpic_destroy_cb(opaque);
}
