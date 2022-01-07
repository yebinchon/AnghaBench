
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
 int Ok ;
 int PixelFormat24bppRGB ;
 int expect (int ,int ) ;
 int pGdipImageSetAbort (int *,int *) ;
 int win_skip (char*) ;

__attribute__((used)) static void test_imageabort(void)
{
    GpStatus stat;
    GpBitmap *bm;

    if (!pGdipImageSetAbort)
    {
        win_skip("GdipImageSetAbort() is not supported.\n");
        return;
    }

    bm = ((void*)0);
    stat = GdipCreateBitmapFromScan0(8, 8, 0, PixelFormat24bppRGB, ((void*)0), &bm);
    expect(Ok, stat);

    stat = pGdipImageSetAbort(((void*)0), ((void*)0));
    expect(InvalidParameter, stat);

    stat = pGdipImageSetAbort((GpImage*)bm, ((void*)0));
    expect(Ok, stat);

    GdipDisposeImage((GpImage*)bm);
}
