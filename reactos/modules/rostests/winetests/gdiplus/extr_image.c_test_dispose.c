
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int GpStatus ;
typedef int GpImage ;
typedef int GpBitmap ;


 int GdipCreateBitmapFromScan0 (int,int,int ,int ,int *,int **) ;
 int GdipDisposeImage (int *) ;
 int InvalidParameter ;
 int ObjectBusy ;
 int Ok ;
 int PixelFormat32bppARGB ;
 int expect (int ,int ) ;
 int memset (char*,int ,int) ;

__attribute__((used)) static void test_dispose(void)
{
    GpStatus stat;
    GpImage *image;
    char invalid_image[256];

    stat = GdipDisposeImage(((void*)0));
    expect(InvalidParameter, stat);

    stat = GdipCreateBitmapFromScan0(2, 2, 0, PixelFormat32bppARGB, ((void*)0), (GpBitmap**)&image);
    expect(Ok, stat);

    stat = GdipDisposeImage(image);
    expect(Ok, stat);

    stat = GdipDisposeImage(image);
    expect(ObjectBusy, stat);

    memset(invalid_image, 0, 256);
    stat = GdipDisposeImage((GpImage*)invalid_image);
    expect(ObjectBusy, stat);
}
