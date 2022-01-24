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
typedef  char* uint32 ;
typedef  char* cmsFloat32Number ;
typedef  int /*<<< orphan*/  TIFF ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char**) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  TIFFTAG_ARTIST ; 
 int /*<<< orphan*/  TIFFTAG_COMPRESSION ; 
 int /*<<< orphan*/  TIFFTAG_DATETIME ; 
 int /*<<< orphan*/  TIFFTAG_DOCUMENTNAME ; 
 int /*<<< orphan*/  TIFFTAG_FILLORDER ; 
 int /*<<< orphan*/  TIFFTAG_HOSTCOMPUTER ; 
 int /*<<< orphan*/  TIFFTAG_IMAGEDEPTH ; 
 int /*<<< orphan*/  TIFFTAG_IMAGEDESCRIPTION ; 
 int /*<<< orphan*/  TIFFTAG_IMAGELENGTH ; 
 int /*<<< orphan*/  TIFFTAG_IMAGEWIDTH ; 
 int /*<<< orphan*/  TIFFTAG_MAKE ; 
 int /*<<< orphan*/  TIFFTAG_MAXSAMPLEVALUE ; 
 int /*<<< orphan*/  TIFFTAG_MINSAMPLEVALUE ; 
 int /*<<< orphan*/  TIFFTAG_MODEL ; 
 int /*<<< orphan*/  TIFFTAG_ORIENTATION ; 
 int /*<<< orphan*/  TIFFTAG_PAGENAME ; 
 int /*<<< orphan*/  TIFFTAG_PLANARCONFIG ; 
 int /*<<< orphan*/  TIFFTAG_PREDICTOR ; 
 int /*<<< orphan*/  TIFFTAG_RESOLUTIONUNIT ; 
 int /*<<< orphan*/  TIFFTAG_ROWSPERSTRIP ; 
 int /*<<< orphan*/  TIFFTAG_SUBFILETYPE ; 
 int /*<<< orphan*/  TIFFTAG_THRESHHOLDING ; 
 int /*<<< orphan*/  TIFFTAG_TILEDEPTH ; 
 int /*<<< orphan*/  TIFFTAG_TILELENGTH ; 
 int /*<<< orphan*/  TIFFTAG_TILEWIDTH ; 
 int /*<<< orphan*/  TIFFTAG_XPOSITION ; 
 int /*<<< orphan*/  TIFFTAG_XRESOLUTION ; 
 int /*<<< orphan*/  TIFFTAG_YPOSITION ; 
 int /*<<< orphan*/  TIFFTAG_YRESOLUTION ; 
 int Width ; 

__attribute__((used)) static
void FUNC3(TIFF* in, TIFF* out)
{
#define CopyField(tag, v) \
    if (TIFFGetField(in, tag, &v)) TIFFSetField(out, tag, v)


    short shortv;
    uint32 ow, ol;
    cmsFloat32Number floatv;
    char *stringv;
    uint32 longv;

    CopyField(TIFFTAG_SUBFILETYPE, longv);

    FUNC1(in, TIFFTAG_IMAGEWIDTH, &ow);
    FUNC1(in, TIFFTAG_IMAGELENGTH, &ol);

    FUNC2(out, TIFFTAG_IMAGEWIDTH, ow);
    FUNC2(out, TIFFTAG_IMAGELENGTH, ol);

    CopyField(TIFFTAG_PLANARCONFIG, shortv);
    CopyField(TIFFTAG_COMPRESSION, shortv);

    if (Width != 32)
        CopyField(TIFFTAG_PREDICTOR, shortv);

    CopyField(TIFFTAG_THRESHHOLDING, shortv);
    CopyField(TIFFTAG_FILLORDER, shortv);
    CopyField(TIFFTAG_ORIENTATION, shortv);
    CopyField(TIFFTAG_MINSAMPLEVALUE, shortv);
    CopyField(TIFFTAG_MAXSAMPLEVALUE, shortv);
    CopyField(TIFFTAG_XRESOLUTION, floatv);
    CopyField(TIFFTAG_YRESOLUTION, floatv);
    CopyField(TIFFTAG_RESOLUTIONUNIT, shortv);
    CopyField(TIFFTAG_ROWSPERSTRIP, longv);
    CopyField(TIFFTAG_XPOSITION, floatv);
    CopyField(TIFFTAG_YPOSITION, floatv);
    CopyField(TIFFTAG_IMAGEDEPTH, longv);
    CopyField(TIFFTAG_TILEDEPTH, longv);

    CopyField(TIFFTAG_TILEWIDTH,  longv);
    CopyField(TIFFTAG_TILELENGTH, longv);

    CopyField(TIFFTAG_ARTIST, stringv);
    CopyField(TIFFTAG_IMAGEDESCRIPTION, stringv);
    CopyField(TIFFTAG_MAKE, stringv);
    CopyField(TIFFTAG_MODEL, stringv);

    CopyField(TIFFTAG_DATETIME, stringv);
    CopyField(TIFFTAG_HOSTCOMPUTER, stringv);
    CopyField(TIFFTAG_PAGENAME, stringv);
    CopyField(TIFFTAG_DOCUMENTNAME, stringv);

}