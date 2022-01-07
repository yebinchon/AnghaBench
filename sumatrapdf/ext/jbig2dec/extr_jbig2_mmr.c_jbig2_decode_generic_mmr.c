
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
typedef int byte ;
struct TYPE_6__ {scalar_t__ stride; scalar_t__ height; int width; int * data; } ;
struct TYPE_5__ {int number; } ;
typedef TYPE_1__ Jbig2Segment ;
typedef int Jbig2MmrCtx ;
typedef TYPE_2__ Jbig2Image ;
typedef int Jbig2GenericRegionParams ;
typedef int Jbig2Ctx ;


 int JBIG2_SEVERITY_WARNING ;
 int jbig2_decode_mmr_init (int *,int ,scalar_t__,int const*,size_t) ;
 int jbig2_decode_mmr_line (int *,int *,int *,int *,int*) ;
 int jbig2_error (int *,int ,int ,char*) ;
 int memset (int *,int ,scalar_t__ const) ;

int
jbig2_decode_generic_mmr(Jbig2Ctx *ctx, Jbig2Segment *segment, const Jbig2GenericRegionParams *params, const byte *data, size_t size, Jbig2Image *image)
{
    Jbig2MmrCtx mmr;
    const uint32_t rowstride = image->stride;
    byte *dst = image->data;
    byte *ref = ((void*)0);
    uint32_t y;
    int code = 0;
    int eofb = 0;

    jbig2_decode_mmr_init(&mmr, image->width, image->height, data, size);

    for (y = 0; !eofb && y < image->height; y++) {
        memset(dst, 0, rowstride);
        code = jbig2_decode_mmr_line(ctx, &mmr, ref, dst, &eofb);
        if (code < 0)
            return jbig2_error(ctx, JBIG2_SEVERITY_WARNING, segment->number, "failed to decode mmr line");
        ref = dst;
        dst += rowstride;
    }

    if (eofb && y < image->height) {
        memset(dst, 0, rowstride * (image->height - y));
    }

    return code;
}
