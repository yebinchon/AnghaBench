
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_10__ {size_t segment_index; size_t n_segments; int buf_wr_ix; int buf_rd_ix; int buf; size_t current_page; TYPE_1__* pages; TYPE_2__** segments; } ;
struct TYPE_9__ {int data_length; int number; } ;
struct TYPE_8__ {int state; int * image; } ;
typedef TYPE_2__ Jbig2Segment ;
typedef TYPE_3__ Jbig2Ctx ;


 int JBIG2_PAGE_COMPLETE ;
 int JBIG2_SEVERITY_FATAL ;
 int JBIG2_SEVERITY_WARNING ;
 int jbig2_error (TYPE_3__*,int ,int,char*) ;
 int jbig2_parse_segment (TYPE_3__*,TYPE_2__*,int) ;

int
jbig2_complete_page(Jbig2Ctx *ctx)
{
    int code;


    if (ctx->segment_index != ctx->n_segments) {
        Jbig2Segment *segment = ctx->segments[ctx->segment_index];




        if ((segment->data_length & 0xffffffff) == 0xffffffff) {
            jbig2_error(ctx, JBIG2_SEVERITY_WARNING, segment->number, "file has an invalid segment data length; trying to decode using the available data");
            segment->data_length = ctx->buf_wr_ix - ctx->buf_rd_ix;
            code = jbig2_parse_segment(ctx, segment, ctx->buf + ctx->buf_rd_ix);
            ctx->buf_rd_ix += segment->data_length;
            ctx->segment_index++;
            if (code < 0) {
                return jbig2_error(ctx, JBIG2_SEVERITY_WARNING, segment->number, "failed to parse segment");
            }
        }
    }


    if (ctx->pages[ctx->current_page].image == ((void*)0)) {
        return jbig2_error(ctx, JBIG2_SEVERITY_FATAL, -1, "page has no image, cannot be completed");
    }

    ctx->pages[ctx->current_page].state = JBIG2_PAGE_COMPLETE;
    return 0;
}
