#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int num; int denom; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int nsf ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 TYPE_1__* scalingfactors ; 

void FUNC2(char *progname)
{
	int i;
	FUNC1("USAGE: %s\n", progname);
	FUNC1("       <Inputfile (BMP|PPM)> <Quality> [options]\n\n");
	FUNC1("       %s\n", progname);
	FUNC1("       <Inputfile (JPG)> [options]\n\n");
	FUNC1("Options:\n\n");
	FUNC1("-alloc = Dynamically allocate JPEG image buffers\n");
	FUNC1("-bmp = Generate output images in Windows Bitmap format (default=PPM)\n");
	FUNC1("-bottomup = Test bottom-up compression/decompression\n");
	FUNC1("-tile = Test performance of the codec when the image is encoded as separate\n");
	FUNC1("     tiles of varying sizes.\n");
	FUNC1("-forcemmx, -forcesse, -forcesse2, -forcesse3 =\n");
	FUNC1("     Force MMX, SSE, SSE2, or SSE3 code paths in the underlying codec\n");
	FUNC1("-rgb, -bgr, -rgbx, -bgrx, -xbgr, -xrgb =\n");
	FUNC1("     Test the specified color conversion path in the codec (default: BGR)\n");
	FUNC1("-fastupsample = Use the fastest chrominance upsampling algorithm available in\n");
	FUNC1("     the underlying codec\n");
	FUNC1("-fastdct = Use the fastest DCT/IDCT algorithms available in the underlying\n");
	FUNC1("     codec\n");
	FUNC1("-accuratedct = Use the most accurate DCT/IDCT algorithms available in the\n");
	FUNC1("     underlying codec\n");
	FUNC1("-subsamp <s> = When testing JPEG compression, this option specifies the level\n");
	FUNC1("     of chrominance subsampling to use (<s> = 444, 422, 440, 420, or GRAY).\n");
	FUNC1("     The default is to test Grayscale, 4:2:0, 4:2:2, and 4:4:4 in sequence.\n");
	FUNC1("-quiet = Output results in tabular rather than verbose format\n");
	FUNC1("-yuvencode = Encode RGB input as planar YUV rather than compressing as JPEG\n");
	FUNC1("-yuvdecode = Decode JPEG image to planar YUV rather than RGB\n");
	FUNC1("-scale M/N = scale down the width/height of the decompressed JPEG image by a\n");
	FUNC1("     factor of M/N (M/N = ");
	for(i=0; i<nsf; i++)
	{
		FUNC1("%d/%d", scalingfactors[i].num, scalingfactors[i].denom);
		if(nsf==2 && i!=nsf-1) FUNC1(" or ");
		else if(nsf>2)
		{
			if(i!=nsf-1) FUNC1(", ");
			if(i==nsf-2) FUNC1("or ");
		}
		if(i%8==0 && i!=0) FUNC1("\n     ");
	}
	FUNC1(")\n");
	FUNC1("-hflip, -vflip, -transpose, -transverse, -rot90, -rot180, -rot270 =\n");
	FUNC1("     Perform the corresponding lossless transform prior to\n");
	FUNC1("     decompression (these options are mutually exclusive)\n");
	FUNC1("-grayscale = Perform lossless grayscale conversion prior to decompression\n");
	FUNC1("     test (can be combined with the other transforms above)\n");
	FUNC1("-benchtime <t> = Run each benchmark for at least <t> seconds (default = 5.0)\n\n");
	FUNC1("NOTE:  If the quality is specified as a range (e.g. 90-100), a separate\n");
	FUNC1("test will be performed for all quality values in the range.\n\n");
	FUNC0(1);
}