
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ refcount; } ;
typedef TYPE_1__ Jbig2Image ;
typedef int Jbig2Ctx ;


 int jbig2_image_free (int *,TYPE_1__*) ;

void
jbig2_image_release(Jbig2Ctx *ctx, Jbig2Image *image)
{
    if (image == ((void*)0))
        return;
    image->refcount--;
    if (image->refcount == 0)
        jbig2_image_free(ctx, image);
}
