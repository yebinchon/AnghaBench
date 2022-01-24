#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int uint32 ;
typedef  int ttile_t ;
typedef  int tsize_t ;
typedef  int /*<<< orphan*/  cmsHTRANSFORM ;
typedef  int /*<<< orphan*/  TIFF ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int*) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int,unsigned char*,int) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  TIFFTAG_IMAGELENGTH ; 
 int /*<<< orphan*/  TIFFTAG_IMAGEWIDTH ; 
 int /*<<< orphan*/  TIFFTAG_ROWSPERSTRIP ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int,unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC6 (unsigned char*) ; 
 scalar_t__ FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,unsigned char*,unsigned char*,int) ; 

__attribute__((used)) static
int FUNC9(cmsHTRANSFORM hXForm, TIFF* in, TIFF* out, int nPlanes)
{
    tsize_t BufSizeIn  = FUNC4(in);
    tsize_t BufSizeOut = FUNC4(out);
    unsigned char *BufferIn, *BufferOut;
    ttile_t i, StripCount = FUNC2(in) / nPlanes;
    uint32 sw;
    uint32 sl;
    uint32 iml;
    int j;
    int PixelCount;

    FUNC1(in, TIFFTAG_IMAGEWIDTH,  &sw);
    FUNC1(in, TIFFTAG_ROWSPERSTRIP, &sl);
    FUNC1(in, TIFFTAG_IMAGELENGTH, &iml);

    // It is possible to get infinite rows per strip
    if (sl == 0 || sl > iml)
        sl = iml;   // One strip for whole image

    BufferIn = (unsigned char *) FUNC7(BufSizeIn * nPlanes);
    if (!BufferIn) FUNC0(BufSizeIn * nPlanes);

    BufferOut = (unsigned char *) FUNC7(BufSizeOut * nPlanes);
    if (!BufferOut) FUNC0(BufSizeOut * nPlanes);


    for (i = 0; i < StripCount; i++) {

        for (j=0; j < nPlanes; j++) {

            if (FUNC3(in, i + (j * StripCount),
                BufferIn + (j * BufSizeIn), BufSizeIn) < 0)   goto cleanup;
        }

        PixelCount = (int) sw * (iml < sl ? iml : sl);
        iml -= sl;

        FUNC8(NULL, hXForm, BufferIn, BufferOut, PixelCount);

        for (j=0; j < nPlanes; j++) {
            if (FUNC5(out, i + (j * StripCount),
                BufferOut + j * BufSizeOut, BufSizeOut) < 0) goto cleanup;
        }

    }

    FUNC6(BufferIn);
    FUNC6(BufferOut);
    return 1;

cleanup:

    FUNC6(BufferIn);
    FUNC6(BufferOut);
    return 0;
}