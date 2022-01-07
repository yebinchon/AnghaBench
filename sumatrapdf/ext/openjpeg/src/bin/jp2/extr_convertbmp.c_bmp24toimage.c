
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* comps; } ;
typedef TYPE_2__ opj_image_t ;
struct TYPE_4__ {unsigned int w; unsigned int h; void** data; } ;
typedef scalar_t__ OPJ_UINT8 ;
typedef unsigned int OPJ_UINT32 ;
typedef void* OPJ_INT32 ;



__attribute__((used)) static void bmp24toimage(const OPJ_UINT8* pData, OPJ_UINT32 stride,
                         opj_image_t* image)
{
    int index;
    OPJ_UINT32 width, height;
    OPJ_UINT32 x, y;
    const OPJ_UINT8 *pSrc = ((void*)0);

    width = image->comps[0].w;
    height = image->comps[0].h;

    index = 0;
    pSrc = pData + (height - 1U) * stride;
    for (y = 0; y < height; y++) {
        for (x = 0; x < width; x++) {
            image->comps[0].data[index] = (OPJ_INT32)pSrc[3 * x + 2];
            image->comps[1].data[index] = (OPJ_INT32)pSrc[3 * x + 1];
            image->comps[2].data[index] = (OPJ_INT32)pSrc[3 * x + 0];
            index++;
        }
        pSrc -= stride;
    }
}
