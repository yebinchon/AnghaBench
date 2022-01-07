
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int ULONG ;
struct TYPE_3__ {scalar_t__ read_data_func; int bitsperpixel; int image_offset; scalar_t__ stride; int IWICBitmapFrameDecode_iface; int * stream; } ;
typedef TYPE_1__ BmpDecoder ;


 scalar_t__ BmpFrameDecode_ReadUncompressed ;
 int IWICBitmapFrameDecode_GetSize (int *,int*,int*) ;
 int assert (int ) ;

void BmpDecoder_FindIconMask(BmpDecoder *This, ULONG *mask_offset, int *topdown)
{
    assert(This->stream != ((void*)0));

    if (This->read_data_func == BmpFrameDecode_ReadUncompressed)
    {

        ULONG width, height, bytesperrow, datasize;
        IWICBitmapFrameDecode_GetSize(&This->IWICBitmapFrameDecode_iface, &width, &height);
        bytesperrow = (((width * This->bitsperpixel)+31)/32)*4;
        datasize = bytesperrow * height;
        *mask_offset = This->image_offset + datasize;
    }
    else
        *mask_offset = 0;

    *topdown = This->stride > 0;
}
