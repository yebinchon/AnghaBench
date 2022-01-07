
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32 ;
typedef int ttile_t ;
typedef int tsize_t ;
typedef int cmsHTRANSFORM ;
typedef int TIFF ;


 int OutOfMem (int) ;
 int TIFFGetFieldDefaulted (int *,int ,int*) ;
 int TIFFNumberOfStrips (int *) ;
 scalar_t__ TIFFReadEncodedStrip (int *,int,unsigned char*,int) ;
 int TIFFStripSize (int *) ;
 int TIFFTAG_IMAGELENGTH ;
 int TIFFTAG_IMAGEWIDTH ;
 int TIFFTAG_ROWSPERSTRIP ;
 scalar_t__ TIFFWriteEncodedStrip (int *,int,unsigned char*,int) ;
 int _TIFFfree (unsigned char*) ;
 scalar_t__ _TIFFmalloc (int) ;
 int cmsDoTransform (int *,int ,unsigned char*,unsigned char*,int) ;

__attribute__((used)) static
int StripBasedXform(cmsHTRANSFORM hXForm, TIFF* in, TIFF* out, int nPlanes)
{
    tsize_t BufSizeIn = TIFFStripSize(in);
    tsize_t BufSizeOut = TIFFStripSize(out);
    unsigned char *BufferIn, *BufferOut;
    ttile_t i, StripCount = TIFFNumberOfStrips(in) / nPlanes;
    uint32 sw;
    uint32 sl;
    uint32 iml;
    int j;
    int PixelCount;

    TIFFGetFieldDefaulted(in, TIFFTAG_IMAGEWIDTH, &sw);
    TIFFGetFieldDefaulted(in, TIFFTAG_ROWSPERSTRIP, &sl);
    TIFFGetFieldDefaulted(in, TIFFTAG_IMAGELENGTH, &iml);


    if (sl == 0 || sl > iml)
        sl = iml;

    BufferIn = (unsigned char *) _TIFFmalloc(BufSizeIn * nPlanes);
    if (!BufferIn) OutOfMem(BufSizeIn * nPlanes);

    BufferOut = (unsigned char *) _TIFFmalloc(BufSizeOut * nPlanes);
    if (!BufferOut) OutOfMem(BufSizeOut * nPlanes);


    for (i = 0; i < StripCount; i++) {

        for (j=0; j < nPlanes; j++) {

            if (TIFFReadEncodedStrip(in, i + (j * StripCount),
                BufferIn + (j * BufSizeIn), BufSizeIn) < 0) goto cleanup;
        }

        PixelCount = (int) sw * (iml < sl ? iml : sl);
        iml -= sl;

        cmsDoTransform(((void*)0), hXForm, BufferIn, BufferOut, PixelCount);

        for (j=0; j < nPlanes; j++) {
            if (TIFFWriteEncodedStrip(out, i + (j * StripCount),
                BufferOut + j * BufSizeOut, BufSizeOut) < 0) goto cleanup;
        }

    }

    _TIFFfree(BufferIn);
    _TIFFfree(BufferOut);
    return 1;

cleanup:

    _TIFFfree(BufferIn);
    _TIFFfree(BufferOut);
    return 0;
}
