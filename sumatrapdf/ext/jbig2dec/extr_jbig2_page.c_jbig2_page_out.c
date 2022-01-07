
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_7__ {int max_page_index; TYPE_1__* pages; } ;
struct TYPE_6__ {scalar_t__ state; int number; int * image; } ;
typedef int Jbig2Image ;
typedef TYPE_2__ Jbig2Ctx ;


 scalar_t__ JBIG2_PAGE_COMPLETE ;
 scalar_t__ JBIG2_PAGE_RETURNED ;
 int JBIG2_SEVERITY_DEBUG ;
 int JBIG2_SEVERITY_WARNING ;
 int jbig2_error (TYPE_2__*,int ,int,char*,int ) ;
 int * jbig2_image_reference (TYPE_2__*,int *) ;

Jbig2Image *
jbig2_page_out(Jbig2Ctx *ctx)
{
    int index;


    for (index = 0; index < ctx->max_page_index; index++) {
        if (ctx->pages[index].state == JBIG2_PAGE_COMPLETE) {
            Jbig2Image *img = ctx->pages[index].image;
            uint32_t page_number = ctx->pages[index].number;

            if (img == ((void*)0)) {
                jbig2_error(ctx, JBIG2_SEVERITY_WARNING, -1, "page %d returned with no associated image", page_number);
                continue;
            }

            ctx->pages[index].state = JBIG2_PAGE_RETURNED;
            jbig2_error(ctx, JBIG2_SEVERITY_DEBUG, -1, "page %d returned to the client", page_number);
            return jbig2_image_reference(ctx, img);
        }
    }


    return ((void*)0);
}
