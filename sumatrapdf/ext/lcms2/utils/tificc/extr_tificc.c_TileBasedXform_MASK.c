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
 int /*<<< orphan*/  TIFFTAG_TILELENGTH ; 
 int /*<<< orphan*/  TIFFTAG_TILEWIDTH ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
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
    ttile_t i, TileCount = FUNC2(in) / nPlanes;
    uint32 tw, tl;
    int PixelCount, j;


    FUNC1(in, TIFFTAG_TILEWIDTH,  &tw);
    FUNC1(in, TIFFTAG_TILELENGTH, &tl);

    PixelCount = (int) tw * tl;

    BufferIn = (unsigned char *) FUNC7(BufSizeIn * nPlanes);
    if (!BufferIn) FUNC0(BufSizeIn * nPlanes);

    BufferOut = (unsigned char *) FUNC7(BufSizeOut * nPlanes);
    if (!BufferOut) FUNC0(BufSizeOut * nPlanes);


    for (i = 0; i < TileCount; i++) {

        for (j=0; j < nPlanes; j++) {

            if (FUNC3(in, i + (j* TileCount),
                BufferIn + (j*BufSizeIn), BufSizeIn) < 0)   goto cleanup;
        }

        FUNC8(NULL, hXForm, BufferIn, BufferOut, PixelCount);

        for (j=0; j < nPlanes; j++) {

            if (FUNC5(out, i + (j*TileCount),
                BufferOut + (j*BufSizeOut), BufSizeOut) < 0) goto cleanup;
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