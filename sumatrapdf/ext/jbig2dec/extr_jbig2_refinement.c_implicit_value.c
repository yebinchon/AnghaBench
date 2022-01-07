
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int GRREFERENCEDX; int GRREFERENCEDY; int * GRREFERENCE; } ;
typedef TYPE_1__ Jbig2RefinementRegionParams ;
typedef int Jbig2Image ;


 int jbig2_image_get_pixel (int *,int,int) ;

__attribute__((used)) static int
implicit_value(const Jbig2RefinementRegionParams *params, Jbig2Image *image, int x, int y)
{
    Jbig2Image *ref = params->GRREFERENCE;
    int i = x - params->GRREFERENCEDX;
    int j = y - params->GRREFERENCEDY;
    int m = jbig2_image_get_pixel(ref, i, j);

    return ((jbig2_image_get_pixel(ref, i - 1, j - 1) == m) &&
            (jbig2_image_get_pixel(ref, i, j - 1) == m) &&
            (jbig2_image_get_pixel(ref, i + 1, j - 1) == m) &&
            (jbig2_image_get_pixel(ref, i - 1, j) == m) &&
            (jbig2_image_get_pixel(ref, i + 1, j) == m) &&
            (jbig2_image_get_pixel(ref, i - 1, j + 1) == m) &&
            (jbig2_image_get_pixel(ref, i, j + 1) == m) &&
            (jbig2_image_get_pixel(ref, i + 1, j + 1) == m)
           )? m : -1;
}
