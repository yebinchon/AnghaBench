#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int ULONG ;
struct TYPE_3__ {scalar_t__ read_data_func; int bitsperpixel; int image_offset; scalar_t__ stride; int /*<<< orphan*/  IWICBitmapFrameDecode_iface; int /*<<< orphan*/ * stream; } ;
typedef  TYPE_1__ BmpDecoder ;

/* Variables and functions */
 scalar_t__ BmpFrameDecode_ReadUncompressed ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int*,int*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

void FUNC2(BmpDecoder *This, ULONG *mask_offset, int *topdown)
{
    FUNC1(This->stream != NULL);

    if (This->read_data_func == BmpFrameDecode_ReadUncompressed)
    {
        /* RGB or BITFIELDS data */
        ULONG width, height, bytesperrow, datasize;
        FUNC0(&This->IWICBitmapFrameDecode_iface, &width, &height);
        bytesperrow = (((width * This->bitsperpixel)+31)/32)*4;
        datasize = bytesperrow * height;
        *mask_offset = This->image_offset + datasize;
    }
    else
        *mask_offset = 0;

    *topdown = This->stride > 0;
}