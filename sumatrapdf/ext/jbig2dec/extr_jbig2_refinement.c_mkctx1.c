
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_3__ {int GRREFERENCEDX; int GRREFERENCEDY; int * GRREFERENCE; } ;
typedef TYPE_1__ Jbig2RefinementRegionParams ;
typedef int Jbig2Image ;


 int jbig2_image_get_pixel (int *,int,int) ;

__attribute__((used)) static uint32_t
mkctx1(const Jbig2RefinementRegionParams *params, Jbig2Image *image, int x, int y)
{
    Jbig2Image *ref = params->GRREFERENCE;
    const int dx = params->GRREFERENCEDX;
    const int dy = params->GRREFERENCEDY;
    uint32_t CONTEXT;

    CONTEXT = jbig2_image_get_pixel(image, x - 1, y + 0);
    CONTEXT |= jbig2_image_get_pixel(image, x + 1, y - 1) << 1;
    CONTEXT |= jbig2_image_get_pixel(image, x + 0, y - 1) << 2;
    CONTEXT |= jbig2_image_get_pixel(image, x - 1, y - 1) << 3;
    CONTEXT |= jbig2_image_get_pixel(ref, x - dx + 1, y - dy + 1) << 4;
    CONTEXT |= jbig2_image_get_pixel(ref, x - dx + 0, y - dy + 1) << 5;
    CONTEXT |= jbig2_image_get_pixel(ref, x - dx + 1, y - dy + 0) << 6;
    CONTEXT |= jbig2_image_get_pixel(ref, x - dx + 0, y - dy + 0) << 7;
    CONTEXT |= jbig2_image_get_pixel(ref, x - dx - 1, y - dy + 0) << 8;
    CONTEXT |= jbig2_image_get_pixel(ref, x - dx + 0, y - dy - 1) << 9;
    return CONTEXT;
}
