
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int Height; int Width; int Y; int X; } ;
typedef int GpStatus ;
typedef TYPE_1__ GpRectF ;
typedef int GpPathGradient ;
typedef int GpBrush ;


 int GdipCreatePathGradient (int ,int,int ,int **) ;
 int GdipDeleteBrush (int *) ;
 int GdipGetPathGradientRect (int *,TYPE_1__*) ;
 int InvalidParameter ;
 int Ok ;
 int WrapModeClamp ;
 int expect (int ,int ) ;
 int expectf (double,int ) ;
 int getbounds_ptf ;

__attribute__((used)) static void test_getbounds(void)
{
    GpStatus status;
    GpPathGradient *brush;
    GpRectF bounds;

    status = GdipCreatePathGradient(getbounds_ptf, 4, WrapModeClamp, &brush);
    expect(Ok, status);

    status = GdipGetPathGradientRect(((void*)0), ((void*)0));
    expect(InvalidParameter, status);
    status = GdipGetPathGradientRect(brush, ((void*)0));
    expect(InvalidParameter, status);
    status = GdipGetPathGradientRect(((void*)0), &bounds);
    expect(InvalidParameter, status);

    status = GdipGetPathGradientRect(brush, &bounds);
    expect(Ok, status);
    expectf(0.0, bounds.X);
    expectf(20.0, bounds.Y);
    expectf(50.0, bounds.Width);
    expectf(30.0, bounds.Height);

    GdipDeleteBrush((GpBrush*) brush);
}
