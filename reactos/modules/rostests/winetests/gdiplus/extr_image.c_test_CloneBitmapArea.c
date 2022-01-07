
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int GpStatus ;
typedef int GpImage ;
typedef int GpBitmap ;
typedef int BitmapData ;


 int GdipBitmapLockBits (int *,int *,int,int ,int *) ;
 int GdipBitmapUnlockBits (int *,int *) ;
 int GdipCloneBitmapAreaI (int ,int ,int,int,int ,int *,int **) ;
 int GdipCreateBitmapFromScan0 (int,int,int ,int ,int *,int **) ;
 int GdipDisposeImage (int *) ;
 int ImageLockModeRead ;
 int ImageLockModeWrite ;
 int Ok ;
 int PixelFormat24bppRGB ;
 int WrongState ;
 int expect (int ,int ) ;

__attribute__((used)) static void test_CloneBitmapArea(void)
{
    GpStatus status;
    GpBitmap *bitmap, *copy;
    BitmapData data, data2;

    status = GdipCreateBitmapFromScan0(1, 1, 0, PixelFormat24bppRGB, ((void*)0), &bitmap);
    expect(Ok, status);

    status = GdipBitmapLockBits(bitmap, ((void*)0), ImageLockModeRead | ImageLockModeWrite, PixelFormat24bppRGB, &data);
    expect(Ok, status);

    status = GdipBitmapLockBits(bitmap, ((void*)0), ImageLockModeRead, PixelFormat24bppRGB, &data2);
    expect(WrongState, status);

    status = GdipCloneBitmapAreaI(0, 0, 1, 1, PixelFormat24bppRGB, bitmap, &copy);
    expect(Ok, status);

    status = GdipBitmapUnlockBits(bitmap, &data);
    expect(Ok, status);

    GdipDisposeImage((GpImage *)copy);
    GdipDisposeImage((GpImage *)bitmap);
}
