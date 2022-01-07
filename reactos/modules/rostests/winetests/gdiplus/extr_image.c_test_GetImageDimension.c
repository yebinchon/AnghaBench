
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef double REAL ;
typedef int GpStatus ;
typedef int GpImage ;
typedef int GpBitmap ;


 int GdipCreateBitmapFromScan0 (double const,double const,int ,int ,int *,int **) ;
 int GdipDisposeImage (int *) ;
 int GdipGetImageDimension (int *,double*,double*) ;
 int InvalidParameter ;
 int Ok ;
 int PixelFormat24bppRGB ;
 int expect (int ,int ) ;
 int expectf (double const,double) ;
 int ok (int,char*) ;

__attribute__((used)) static void test_GetImageDimension(void)
{
    GpBitmap *bm;
    GpStatus stat;
    const REAL WIDTH = 10.0, HEIGHT = 20.0;
    REAL w,h;

    bm = (GpBitmap*)0xdeadbeef;
    stat = GdipCreateBitmapFromScan0(WIDTH, HEIGHT, 0, PixelFormat24bppRGB,((void*)0), &bm);
    expect(Ok,stat);
    ok((GpBitmap*)0xdeadbeef != bm, "Expected bitmap to not be 0xdeadbeef\n");
    ok(((void*)0) != bm, "Expected bitmap to not be NULL\n");

    stat = GdipGetImageDimension(((void*)0),&w,&h);
    expect(InvalidParameter, stat);

    stat = GdipGetImageDimension((GpImage*)bm,((void*)0),&h);
    expect(InvalidParameter, stat);

    stat = GdipGetImageDimension((GpImage*)bm,&w,((void*)0));
    expect(InvalidParameter, stat);

    w = -1;
    h = -1;
    stat = GdipGetImageDimension((GpImage*)bm,&w,&h);
    expect(Ok, stat);
    expectf(WIDTH, w);
    expectf(HEIGHT, h);
    GdipDisposeImage((GpImage*)bm);
}
