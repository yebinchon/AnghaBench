
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct TYPE_10__ {scalar_t__ height; int width; } ;
struct TYPE_9__ {int height; int flags; TYPE_2__* image; scalar_t__ striped; } ;
typedef TYPE_1__ Jbig2Page ;
typedef TYPE_2__ Jbig2Image ;
typedef int Jbig2Ctx ;
typedef int Jbig2ComposeOp ;


 int JBIG2_SEVERITY_DEBUG ;
 int JBIG2_SEVERITY_FATAL ;
 int JBIG2_SEVERITY_WARNING ;
 int jbig2_error (int *,int ,int,char*,...) ;
 int jbig2_image_compose (int *,TYPE_2__*,TYPE_2__*,scalar_t__,scalar_t__,int ) ;
 TYPE_2__* jbig2_image_resize (int *,TYPE_2__*,int ,scalar_t__,int) ;

int
jbig2_page_add_result(Jbig2Ctx *ctx, Jbig2Page *page, Jbig2Image *image, uint32_t x, uint32_t y, Jbig2ComposeOp op)
{
    int code;


    if (page->image == ((void*)0))
        return jbig2_error(ctx, JBIG2_SEVERITY_WARNING, -1, "page info possibly missing, no image defined");


    if (page->striped && page->height == 0xFFFFFFFF) {
        uint32_t new_height = y + image->height;
        if (page->image->height < new_height) {
            Jbig2Image *resized_image = ((void*)0);

            jbig2_error(ctx, JBIG2_SEVERITY_DEBUG, -1, "growing page buffer to %u rows to accommodate new stripe", new_height);
            resized_image = jbig2_image_resize(ctx, page->image, page->image->width, new_height, page->flags & 4);
            if (resized_image == ((void*)0)) {
                return jbig2_error(ctx, JBIG2_SEVERITY_FATAL, -1, "unable to resize image to accommodate new stripe");
            }
            page->image = resized_image;
        }
    }

    code = jbig2_image_compose(ctx, page->image, image, x, y, op);
    if (code < 0)
        return jbig2_error(ctx, JBIG2_SEVERITY_WARNING, -1, "failed to compose image with page");

    return 0;
}
