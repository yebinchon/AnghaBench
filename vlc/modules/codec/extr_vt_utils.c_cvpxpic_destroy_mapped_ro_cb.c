
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cvpxpic_ctx {int cvpx; } ;
typedef int picture_context_t ;


 int CVPixelBufferUnlockBaseAddress (int ,int ) ;
 int cvpxpic_destroy_cb (int *) ;
 int kCVPixelBufferLock_ReadOnly ;

__attribute__((used)) static void
cvpxpic_destroy_mapped_ro_cb(picture_context_t *opaque)
{
    struct cvpxpic_ctx *ctx = (struct cvpxpic_ctx *)opaque;

    CVPixelBufferUnlockBaseAddress(ctx->cvpx, kCVPixelBufferLock_ReadOnly);
    cvpxpic_destroy_cb(opaque);
}
