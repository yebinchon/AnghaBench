
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {double X; double Y; } ;
typedef int GpStatus ;
typedef TYPE_1__ GpPointF ;
typedef int GpLineGradient ;
typedef int GpBrush ;
typedef int BOOL ;
typedef int ARGB ;


 int GdipCreateLineBrush (TYPE_1__*,TYPE_1__*,int ,int,int ,int **) ;
 int GdipDeleteBrush (int *) ;
 int GdipGetLineGammaCorrection (int *,int *) ;
 int InvalidParameter ;
 int Ok ;
 int WrapModeTile ;
 int expect (int ,int ) ;

__attribute__((used)) static void test_getgamma(void)
{
    GpStatus status;
    GpLineGradient *line;
    GpPointF start, end;
    BOOL gamma;

    start.X = start.Y = 0.0;
    end.X = end.Y = 100.0;

    status = GdipCreateLineBrush(&start, &end, (ARGB)0xdeadbeef, 0xdeadbeef, WrapModeTile, &line);
    expect(Ok, status);


    status = GdipGetLineGammaCorrection(((void*)0), ((void*)0));
    expect(InvalidParameter, status);
    status = GdipGetLineGammaCorrection(line, ((void*)0));
    expect(InvalidParameter, status);
    status = GdipGetLineGammaCorrection(((void*)0), &gamma);
    expect(InvalidParameter, status);

    GdipDeleteBrush((GpBrush*)line);
}
