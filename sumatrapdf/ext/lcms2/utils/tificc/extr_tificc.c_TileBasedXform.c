
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
 int TIFFNumberOfTiles (int *) ;
 scalar_t__ TIFFReadEncodedTile (int *,int,unsigned char*,int) ;
 int TIFFTAG_TILELENGTH ;
 int TIFFTAG_TILEWIDTH ;
 int TIFFTileSize (int *) ;
 scalar_t__ TIFFWriteEncodedTile (int *,int,unsigned char*,int) ;
 int _TIFFfree (unsigned char*) ;
 scalar_t__ _TIFFmalloc (int) ;
 int cmsDoTransform (int *,int ,unsigned char*,unsigned char*,int) ;

__attribute__((used)) static
int TileBasedXform(cmsHTRANSFORM hXForm, TIFF* in, TIFF* out, int nPlanes)
{
    tsize_t BufSizeIn = TIFFTileSize(in);
    tsize_t BufSizeOut = TIFFTileSize(out);
    unsigned char *BufferIn, *BufferOut;
    ttile_t i, TileCount = TIFFNumberOfTiles(in) / nPlanes;
    uint32 tw, tl;
    int PixelCount, j;


    TIFFGetFieldDefaulted(in, TIFFTAG_TILEWIDTH, &tw);
    TIFFGetFieldDefaulted(in, TIFFTAG_TILELENGTH, &tl);

    PixelCount = (int) tw * tl;

    BufferIn = (unsigned char *) _TIFFmalloc(BufSizeIn * nPlanes);
    if (!BufferIn) OutOfMem(BufSizeIn * nPlanes);

    BufferOut = (unsigned char *) _TIFFmalloc(BufSizeOut * nPlanes);
    if (!BufferOut) OutOfMem(BufSizeOut * nPlanes);


    for (i = 0; i < TileCount; i++) {

        for (j=0; j < nPlanes; j++) {

            if (TIFFReadEncodedTile(in, i + (j* TileCount),
                BufferIn + (j*BufSizeIn), BufSizeIn) < 0) goto cleanup;
        }

        cmsDoTransform(((void*)0), hXForm, BufferIn, BufferOut, PixelCount);

        for (j=0; j < nPlanes; j++) {

            if (TIFFWriteEncodedTile(out, i + (j*TileCount),
                BufferOut + (j*BufSizeOut), BufSizeOut) < 0) goto cleanup;
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
