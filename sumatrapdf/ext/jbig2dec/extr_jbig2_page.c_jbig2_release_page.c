
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int max_page_index; TYPE_1__* pages; } ;
struct TYPE_6__ {int number; int state; int * image; } ;
typedef int Jbig2Image ;
typedef TYPE_2__ Jbig2Ctx ;


 int JBIG2_PAGE_RELEASED ;
 int JBIG2_SEVERITY_DEBUG ;
 int JBIG2_SEVERITY_WARNING ;
 int jbig2_error (TYPE_2__*,int ,int,char*,...) ;
 int jbig2_image_release (TYPE_2__*,int *) ;

void
jbig2_release_page(Jbig2Ctx *ctx, Jbig2Image *image)
{
    int index;

    if (image == ((void*)0))
        return;


    for (index = 0; index < ctx->max_page_index; index++) {
        if (ctx->pages[index].image == image) {
            jbig2_image_release(ctx, image);
            ctx->pages[index].state = JBIG2_PAGE_RELEASED;
            jbig2_error(ctx, JBIG2_SEVERITY_DEBUG, -1, "page %d released by the client", ctx->pages[index].number);
            return;
        }
    }


    jbig2_error(ctx, JBIG2_SEVERITY_WARNING, -1, "failed to release unknown page");
}
