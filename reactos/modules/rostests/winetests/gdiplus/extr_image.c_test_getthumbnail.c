
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT ;
typedef int GpStatus ;
typedef int GpImage ;
typedef int GpBitmap ;


 int GdipCreateBitmapFromScan0 (int,int,int ,int ,int *,int **) ;
 int GdipDisposeImage (int *) ;
 int GdipGetImageHeight (int *,int*) ;
 int GdipGetImageThumbnail (int *,int,int,int **,int *,int *) ;
 int GdipGetImageWidth (int *,int*) ;
 int InvalidParameter ;
 int Ok ;
 int PixelFormat32bppRGB ;
 int expect (int,int) ;

__attribute__((used)) static void test_getthumbnail(void)
{
    GpStatus stat;
    GpImage *bitmap1, *bitmap2;
    UINT width, height;

    stat = GdipGetImageThumbnail(((void*)0), 0, 0, &bitmap2, ((void*)0), ((void*)0));
    expect(InvalidParameter, stat);

    stat = GdipCreateBitmapFromScan0(128, 128, 0, PixelFormat32bppRGB, ((void*)0), (GpBitmap**)&bitmap1);
    expect(Ok, stat);

    stat = GdipGetImageThumbnail(bitmap1, 0, 0, ((void*)0), ((void*)0), ((void*)0));
    expect(InvalidParameter, stat);

    stat = GdipGetImageThumbnail(bitmap1, 0, 0, &bitmap2, ((void*)0), ((void*)0));
    expect(Ok, stat);

    if (stat == Ok)
    {
        stat = GdipGetImageWidth(bitmap2, &width);
        expect(Ok, stat);
        expect(120, width);

        stat = GdipGetImageHeight(bitmap2, &height);
        expect(Ok, stat);
        expect(120, height);

        GdipDisposeImage(bitmap2);
    }

    GdipDisposeImage(bitmap1);


    stat = GdipCreateBitmapFromScan0(64, 128, 0, PixelFormat32bppRGB, ((void*)0), (GpBitmap**)&bitmap1);
    expect(Ok, stat);

    stat = GdipGetImageThumbnail(bitmap1, 32, 32, &bitmap2, ((void*)0), ((void*)0));
    expect(Ok, stat);

    if (stat == Ok)
    {
        stat = GdipGetImageWidth(bitmap2, &width);
        expect(Ok, stat);
        expect(32, width);

        stat = GdipGetImageHeight(bitmap2, &height);
        expect(Ok, stat);
        expect(32, height);

        GdipDisposeImage(bitmap2);
    }

    stat = GdipGetImageThumbnail(bitmap1, 0, 0, &bitmap2, ((void*)0), ((void*)0));
    expect(Ok, stat);

    if (stat == Ok)
    {
        stat = GdipGetImageWidth(bitmap2, &width);
        expect(Ok, stat);
        expect(120, width);

        stat = GdipGetImageHeight(bitmap2, &height);
        expect(Ok, stat);
        expect(120, height);

        GdipDisposeImage(bitmap2);
    }

    GdipDisposeImage(bitmap1);
}
