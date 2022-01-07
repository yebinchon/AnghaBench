
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint32_t ;
typedef int byte ;
struct TYPE_6__ {int width; int height; int stride; scalar_t__ data; } ;
struct TYPE_5__ {int number; } ;
typedef TYPE_1__ Jbig2Segment ;
typedef TYPE_2__ Jbig2Image ;
typedef int Jbig2GenericRegionParams ;
typedef int Jbig2Ctx ;
typedef int Jbig2ArithState ;
typedef int Jbig2ArithCx ;


 int JBIG2_SEVERITY_FATAL ;
 int fwrite (int*,int,int const,int ) ;
 int jbig2_arith_decode (int *,int *,int*) ;
 int jbig2_error (int *,int ,int ,char*) ;
 int printf (char*,int const,int const) ;
 int stdout ;

__attribute__((used)) static int
jbig2_decode_generic_template0(Jbig2Ctx *ctx,
                               Jbig2Segment *segment,
                               const Jbig2GenericRegionParams *params, Jbig2ArithState *as,
                               Jbig2Image *image, Jbig2ArithCx *GB_stats)
{
    const uint32_t GBW = image->width;
    const uint32_t GBH = image->height;
    const uint32_t rowstride = image->stride;
    uint32_t x, y;
    byte *line2 = ((void*)0);
    byte *line1 = ((void*)0);
    byte *gbreg_line = (byte *) image->data;





    if (GBW <= 0)
        return 0;

    for (y = 0; y < GBH; y++) {
        uint32_t CONTEXT;
        uint32_t line_m1;
        uint32_t line_m2;
        uint32_t padded_width = (GBW + 7) & -8;
        int code = 0;

        line_m1 = line1 ? line1[0] : 0;
        line_m2 = line2 ? line2[0] << 6 : 0;
        CONTEXT = (line_m1 & 0x7f0) | (line_m2 & 0xf800);


        for (x = 0; x < padded_width; x += 8) {
            byte result = 0;
            int x_minor;
            int minor_width = GBW - x > 8 ? 8 : GBW - x;

            if (line1)
                line_m1 = (line_m1 << 8) | (x + 8 < GBW ? line1[(x >> 3) + 1] : 0);

            if (line2)
                line_m2 = (line_m2 << 8) | (x + 8 < GBW ? line2[(x >> 3) + 1] << 6 : 0);


            for (x_minor = 0; x_minor < minor_width; x_minor++) {
                bool bit;

                bit = jbig2_arith_decode(as, &GB_stats[CONTEXT], &code);
                if (code)
                    return jbig2_error(ctx, JBIG2_SEVERITY_FATAL, segment->number, "failed to decode arithmetic code when handling generic template0 optimized");
                result |= bit << (7 - x_minor);
                CONTEXT = ((CONTEXT & 0x7bf7) << 1) | bit | ((line_m1 >> (7 - x_minor)) & 0x10) | ((line_m2 >> (7 - x_minor)) & 0x800);
            }
            gbreg_line[x >> 3] = result;
        }



        line2 = line1;
        line1 = gbreg_line;
        gbreg_line += rowstride;
    }

    return 0;
}
