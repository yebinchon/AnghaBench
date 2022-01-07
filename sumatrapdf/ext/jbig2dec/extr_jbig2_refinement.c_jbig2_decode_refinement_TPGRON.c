
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


typedef size_t uint32_t ;
struct TYPE_15__ {int width; int height; } ;
struct TYPE_14__ {scalar_t__ GRTEMPLATE; int * grat; } ;
typedef TYPE_1__ Jbig2RefinementRegionParams ;
typedef TYPE_2__ Jbig2Image ;
typedef int Jbig2Ctx ;
typedef int Jbig2ArithState ;
typedef int Jbig2ArithCx ;
typedef size_t (* ContextBuilder ) (TYPE_1__ const*,TYPE_2__*,int,int) ;


 int JBIG2_SEVERITY_FATAL ;
 int implicit_value (TYPE_1__ const*,TYPE_2__*,int,int) ;
 int jbig2_arith_decode (int *,int *,int*) ;
 int jbig2_error (int *,int ,int,char*) ;
 int jbig2_image_set_pixel (TYPE_2__*,int,int,int) ;
 size_t mkctx0 (TYPE_1__ const*,TYPE_2__*,int,int) ;
 size_t mkctx1 (TYPE_1__ const*,TYPE_2__*,int,int) ;
 scalar_t__ pixel_outside_field (int ,int ) ;
 scalar_t__ refpixel_outside_field (int ,int ) ;

__attribute__((used)) static int
jbig2_decode_refinement_TPGRON(Jbig2Ctx *ctx, const Jbig2RefinementRegionParams *params, Jbig2ArithState *as, Jbig2Image *image, Jbig2ArithCx *GR_stats)
{
    const int GRW = image->width;
    const int GRH = image->height;
    int x, y, iv, bit, LTP = 0;
    uint32_t start_context = (params->GRTEMPLATE ? 0x40 : 0x100);
    ContextBuilder mkctx = (params->GRTEMPLATE ? mkctx1 : mkctx0);
    int code = 0;

    if (params->GRTEMPLATE == 0 &&
        (pixel_outside_field(params->grat[0], params->grat[1]) ||
        refpixel_outside_field(params->grat[2], params->grat[3])))
        return jbig2_error(ctx, JBIG2_SEVERITY_FATAL, -1,
                           "adaptive template pixel is out of field");

    for (y = 0; y < GRH; y++) {
        LTP ^= jbig2_arith_decode(as, &GR_stats[start_context], &code);
        if (code)
            return jbig2_error(ctx, JBIG2_SEVERITY_FATAL, -1, "failed to decode arithmetic code when handling refinement TPGRON1");
        if (!LTP) {
            for (x = 0; x < GRW; x++) {
                bit = jbig2_arith_decode(as, &GR_stats[mkctx(params, image, x, y)], &code);
                if (code)
                    return jbig2_error(ctx, JBIG2_SEVERITY_FATAL, -1, "failed to decode arithmetic code when handling refinement TPGRON1");
                jbig2_image_set_pixel(image, x, y, bit);
            }
        } else {
            for (x = 0; x < GRW; x++) {
                iv = implicit_value(params, image, x, y);
                if (iv < 0) {
                    bit = jbig2_arith_decode(as, &GR_stats[mkctx(params, image, x, y)], &code);
                    if (code)
                        return jbig2_error(ctx, JBIG2_SEVERITY_FATAL, -1, "failed to decode arithmetic code when handling refinement TPGRON1");
                    jbig2_image_set_pixel(image, x, y, bit);
                } else
                    jbig2_image_set_pixel(image, x, y, iv);
            }
        }
    }

    return 0;
}
