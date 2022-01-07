
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int allocator; } ;
struct TYPE_6__ {struct TYPE_6__* data; } ;
typedef TYPE_1__ Jbig2Image ;
typedef TYPE_2__ Jbig2Ctx ;


 int jbig2_free (int ,TYPE_1__*) ;

void
jbig2_image_free(Jbig2Ctx *ctx, Jbig2Image *image)
{
    if (image != ((void*)0)) {
        jbig2_free(ctx->allocator, image->data);
        jbig2_free(ctx->allocator, image);
    }
}
