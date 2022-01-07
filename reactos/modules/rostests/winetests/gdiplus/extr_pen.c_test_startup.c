
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int todo_wine ;
struct GdiplusStartupInput {int GdiplusVersion; scalar_t__ SuppressExternalCodecs; scalar_t__ SuppressBackgroundThread; int * DebugEventCallback; } ;
typedef int status ;
typedef int ULONG_PTR ;
typedef int Status ;
typedef int GpPen ;
typedef int GdiplusNotInitialized ;
typedef int ARGB ;


 int GdipCreatePen1 (int ,float,int ,int **) ;
 int GdipDeletePen (int *) ;
 int GdiplusShutdown (int ) ;
 int GdiplusStartup (int *,struct GdiplusStartupInput*,int *) ;
 int Ok ;
 int UnitPixel ;
 int UnsupportedGdiplusVersion ;
 int ok (int,char*,int) ;
 int trace (char*,int) ;

__attribute__((used)) static void test_startup(void)
{
    GpPen *pen = ((void*)0);
    Status status;
    struct GdiplusStartupInput gdiplusStartupInput;
    ULONG_PTR gdiplusToken;
    int gpversion;

    gdiplusStartupInput.DebugEventCallback = ((void*)0);
    gdiplusStartupInput.SuppressBackgroundThread = 0;
    gdiplusStartupInput.SuppressExternalCodecs = 0;

    for (gpversion=1; gpversion<256; gpversion++)
    {
        gdiplusStartupInput.GdiplusVersion = gpversion;
        status = GdiplusStartup(&gdiplusToken, &gdiplusStartupInput, ((void*)0));
        ok(status == Ok || status == UnsupportedGdiplusVersion,
            "GdiplusStartup returned %x\n", status);
        GdiplusShutdown(gdiplusToken);
        if (status != Ok)
        {
            gpversion--;
            break;
        }
    }

    ok(gpversion > 0 && gpversion <= 2, "unexpected gdiplus version %i\n", gpversion);
    trace("gdiplus version is %i\n", gpversion);

    status = GdipCreatePen1((ARGB)0xffff00ff, 10.0f, UnitPixel, &pen);

    todo_wine
        expect(GdiplusNotInitialized, status);

    GdipDeletePen(pen);
}
