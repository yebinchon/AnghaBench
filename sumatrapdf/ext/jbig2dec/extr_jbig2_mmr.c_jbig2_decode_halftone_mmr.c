
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
typedef int byte ;
struct TYPE_8__ {scalar_t__ stride; scalar_t__ height; int width; int * data; } ;
struct TYPE_7__ {int word; int bit_index; scalar_t__ data_index; } ;
typedef TYPE_1__ Jbig2MmrCtx ;
typedef TYPE_2__ Jbig2Image ;
typedef int Jbig2GenericRegionParams ;
typedef int Jbig2Ctx ;


 int JBIG2_SEVERITY_WARNING ;
 int jbig2_decode_mmr_consume (TYPE_1__*,int) ;
 int jbig2_decode_mmr_init (TYPE_1__*,int ,scalar_t__,int const*,size_t) ;
 int jbig2_decode_mmr_line (int *,TYPE_1__*,int *,int *,int*) ;
 int jbig2_error (int *,int ,int,char*) ;
 int memset (int *,int ,scalar_t__ const) ;

int
jbig2_decode_halftone_mmr(Jbig2Ctx *ctx, const Jbig2GenericRegionParams *params, const byte *data, size_t size, Jbig2Image *image, size_t *consumed_bytes)
{
    Jbig2MmrCtx mmr;
    const uint32_t rowstride = image->stride;
    byte *dst = image->data;
    byte *ref = ((void*)0);
    uint32_t y;
    int code = 0;
    const uint32_t EOFB = 0x001001;
    int eofb = 0;

    jbig2_decode_mmr_init(&mmr, image->width, image->height, data, size);

    for (y = 0; !eofb && y < image->height; y++) {
        memset(dst, 0, rowstride);
        code = jbig2_decode_mmr_line(ctx, &mmr, ref, dst, &eofb);
        if (code < 0)
            return jbig2_error(ctx, JBIG2_SEVERITY_WARNING, -1, "failed to decode halftone mmr line");
        ref = dst;
        dst += rowstride;
    }

    if (eofb && y < image->height) {
        memset(dst, 0, rowstride * (image->height - y));
    }


    if (mmr.word >> 8 == EOFB) {
        jbig2_decode_mmr_consume(&mmr, 24);
    }

    *consumed_bytes += mmr.data_index + (mmr.bit_index >> 3) + (mmr.bit_index > 0 ? 1 : 0);
    return code;
}
