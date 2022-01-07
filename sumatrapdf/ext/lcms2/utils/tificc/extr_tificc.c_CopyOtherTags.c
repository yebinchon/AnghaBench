
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char* uint32 ;
typedef char* cmsFloat32Number ;
typedef int TIFF ;


 int CopyField (int ,...) ;
 int TIFFGetField (int *,int ,char**) ;
 int TIFFSetField (int *,int ,char*) ;
 int TIFFTAG_ARTIST ;
 int TIFFTAG_COMPRESSION ;
 int TIFFTAG_DATETIME ;
 int TIFFTAG_DOCUMENTNAME ;
 int TIFFTAG_FILLORDER ;
 int TIFFTAG_HOSTCOMPUTER ;
 int TIFFTAG_IMAGEDEPTH ;
 int TIFFTAG_IMAGEDESCRIPTION ;
 int TIFFTAG_IMAGELENGTH ;
 int TIFFTAG_IMAGEWIDTH ;
 int TIFFTAG_MAKE ;
 int TIFFTAG_MAXSAMPLEVALUE ;
 int TIFFTAG_MINSAMPLEVALUE ;
 int TIFFTAG_MODEL ;
 int TIFFTAG_ORIENTATION ;
 int TIFFTAG_PAGENAME ;
 int TIFFTAG_PLANARCONFIG ;
 int TIFFTAG_PREDICTOR ;
 int TIFFTAG_RESOLUTIONUNIT ;
 int TIFFTAG_ROWSPERSTRIP ;
 int TIFFTAG_SUBFILETYPE ;
 int TIFFTAG_THRESHHOLDING ;
 int TIFFTAG_TILEDEPTH ;
 int TIFFTAG_TILELENGTH ;
 int TIFFTAG_TILEWIDTH ;
 int TIFFTAG_XPOSITION ;
 int TIFFTAG_XRESOLUTION ;
 int TIFFTAG_YPOSITION ;
 int TIFFTAG_YRESOLUTION ;
 int Width ;

__attribute__((used)) static
void CopyOtherTags(TIFF* in, TIFF* out)
{




    short shortv;
    uint32 ow, ol;
    cmsFloat32Number floatv;
    char *stringv;
    uint32 longv;

    if (TIFFGetField(in, TIFFTAG_SUBFILETYPE, &longv)) TIFFSetField(out, TIFFTAG_SUBFILETYPE, longv);

    TIFFGetField(in, TIFFTAG_IMAGEWIDTH, &ow);
    TIFFGetField(in, TIFFTAG_IMAGELENGTH, &ol);

    TIFFSetField(out, TIFFTAG_IMAGEWIDTH, ow);
    TIFFSetField(out, TIFFTAG_IMAGELENGTH, ol);

    if (TIFFGetField(in, TIFFTAG_PLANARCONFIG, &shortv)) TIFFSetField(out, TIFFTAG_PLANARCONFIG, shortv);
    if (TIFFGetField(in, TIFFTAG_COMPRESSION, &shortv)) TIFFSetField(out, TIFFTAG_COMPRESSION, shortv);

    if (Width != 32)
        if (TIFFGetField(in, TIFFTAG_PREDICTOR, &shortv)) TIFFSetField(out, TIFFTAG_PREDICTOR, shortv);

    if (TIFFGetField(in, TIFFTAG_THRESHHOLDING, &shortv)) TIFFSetField(out, TIFFTAG_THRESHHOLDING, shortv);
    if (TIFFGetField(in, TIFFTAG_FILLORDER, &shortv)) TIFFSetField(out, TIFFTAG_FILLORDER, shortv);
    if (TIFFGetField(in, TIFFTAG_ORIENTATION, &shortv)) TIFFSetField(out, TIFFTAG_ORIENTATION, shortv);
    if (TIFFGetField(in, TIFFTAG_MINSAMPLEVALUE, &shortv)) TIFFSetField(out, TIFFTAG_MINSAMPLEVALUE, shortv);
    if (TIFFGetField(in, TIFFTAG_MAXSAMPLEVALUE, &shortv)) TIFFSetField(out, TIFFTAG_MAXSAMPLEVALUE, shortv);
    if (TIFFGetField(in, TIFFTAG_XRESOLUTION, &floatv)) TIFFSetField(out, TIFFTAG_XRESOLUTION, floatv);
    if (TIFFGetField(in, TIFFTAG_YRESOLUTION, &floatv)) TIFFSetField(out, TIFFTAG_YRESOLUTION, floatv);
    if (TIFFGetField(in, TIFFTAG_RESOLUTIONUNIT, &shortv)) TIFFSetField(out, TIFFTAG_RESOLUTIONUNIT, shortv);
    if (TIFFGetField(in, TIFFTAG_ROWSPERSTRIP, &longv)) TIFFSetField(out, TIFFTAG_ROWSPERSTRIP, longv);
    if (TIFFGetField(in, TIFFTAG_XPOSITION, &floatv)) TIFFSetField(out, TIFFTAG_XPOSITION, floatv);
    if (TIFFGetField(in, TIFFTAG_YPOSITION, &floatv)) TIFFSetField(out, TIFFTAG_YPOSITION, floatv);
    if (TIFFGetField(in, TIFFTAG_IMAGEDEPTH, &longv)) TIFFSetField(out, TIFFTAG_IMAGEDEPTH, longv);
    if (TIFFGetField(in, TIFFTAG_TILEDEPTH, &longv)) TIFFSetField(out, TIFFTAG_TILEDEPTH, longv);

    if (TIFFGetField(in, TIFFTAG_TILEWIDTH, &longv)) TIFFSetField(out, TIFFTAG_TILEWIDTH, longv);
    if (TIFFGetField(in, TIFFTAG_TILELENGTH, &longv)) TIFFSetField(out, TIFFTAG_TILELENGTH, longv);

    if (TIFFGetField(in, TIFFTAG_ARTIST, &stringv)) TIFFSetField(out, TIFFTAG_ARTIST, stringv);
    if (TIFFGetField(in, TIFFTAG_IMAGEDESCRIPTION, &stringv)) TIFFSetField(out, TIFFTAG_IMAGEDESCRIPTION, stringv);
    if (TIFFGetField(in, TIFFTAG_MAKE, &stringv)) TIFFSetField(out, TIFFTAG_MAKE, stringv);
    if (TIFFGetField(in, TIFFTAG_MODEL, &stringv)) TIFFSetField(out, TIFFTAG_MODEL, stringv);

    if (TIFFGetField(in, TIFFTAG_DATETIME, &stringv)) TIFFSetField(out, TIFFTAG_DATETIME, stringv);
    if (TIFFGetField(in, TIFFTAG_HOSTCOMPUTER, &stringv)) TIFFSetField(out, TIFFTAG_HOSTCOMPUTER, stringv);
    if (TIFFGetField(in, TIFFTAG_PAGENAME, &stringv)) TIFFSetField(out, TIFFTAG_PAGENAME, stringv);
    if (TIFFGetField(in, TIFFTAG_DOCUMENTNAME, &stringv)) TIFFSetField(out, TIFFTAG_DOCUMENTNAME, stringv);

}
