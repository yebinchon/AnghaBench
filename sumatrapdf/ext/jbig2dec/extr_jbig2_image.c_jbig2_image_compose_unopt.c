
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_6__ {int width; int height; } ;
typedef TYPE_1__ Jbig2Image ;
typedef int Jbig2Ctx ;
typedef int Jbig2ComposeOp ;







 int jbig2_image_get_pixel (TYPE_1__*,int,int) ;
 int jbig2_image_set_pixel (TYPE_1__*,int ,int ,int) ;

__attribute__((used)) static int
jbig2_image_compose_unopt(Jbig2Ctx *ctx, Jbig2Image *dst, Jbig2Image *src, int x, int y, Jbig2ComposeOp op)
{
    uint32_t i, j;
    uint32_t sw = src->width;
    uint32_t sh = src->height;
    uint32_t sx = 0;
    uint32_t sy = 0;


    if (x < 0) {
        sx += -x;
        if (sw < (uint32_t) -x)
            sw = 0;
        else
            sw -= -x;
        x = 0;
    }
    if (y < 0) {
        sy += -y;
        if (sh < (uint32_t) -y)
            sh = 0;
        else
            sh -= -y;
        y = 0;
    }
    if ((uint32_t) x + sw >= dst->width) {
        if (dst->width >= (uint32_t) x)
            sw = dst->width - x;
        else
            sw = 0;
    }
    if ((uint32_t) y + sh >= dst->height) {
        if (dst->height >= (uint32_t) y)
            sh = dst->height - y;
        else
            sh = 0;
    }

    switch (op) {
    case 131:
        for (j = 0; j < sh; j++) {
            for (i = 0; i < sw; i++) {
                jbig2_image_set_pixel(dst, i + x, j + y, jbig2_image_get_pixel(src, i + sx, j + sy) | jbig2_image_get_pixel(dst, i + x, j + y));
            }
        }
        break;
    case 132:
        for (j = 0; j < sh; j++) {
            for (i = 0; i < sw; i++) {
                jbig2_image_set_pixel(dst, i + x, j + y, jbig2_image_get_pixel(src, i + sx, j + sy) & jbig2_image_get_pixel(dst, i + x, j + y));
            }
        }
        break;
    case 128:
        for (j = 0; j < sh; j++) {
            for (i = 0; i < sw; i++) {
                jbig2_image_set_pixel(dst, i + x, j + y, jbig2_image_get_pixel(src, i + sx, j + sy) ^ jbig2_image_get_pixel(dst, i + x, j + y));
            }
        }
        break;
    case 129:
        for (j = 0; j < sh; j++) {
            for (i = 0; i < sw; i++) {
                jbig2_image_set_pixel(dst, i + x, j + y, (jbig2_image_get_pixel(src, i + sx, j + sy) == jbig2_image_get_pixel(dst, i + x, j + y)));
            }
        }
        break;
    case 130:
        for (j = 0; j < sh; j++) {
            for (i = 0; i < sw; i++) {
                jbig2_image_set_pixel(dst, i + x, j + y, jbig2_image_get_pixel(src, i + sx, j + sy));
            }
        }
        break;
    }

    return 0;
}
