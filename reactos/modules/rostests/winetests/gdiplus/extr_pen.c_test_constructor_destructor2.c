
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {double X; double Y; } ;
typedef int GpStatus ;
typedef TYPE_1__ GpPointF ;
typedef int GpPen ;
typedef int GpLineGradient ;
typedef int GpBrush ;
typedef int ARGB ;


 int GdipCreateLineBrush (TYPE_1__*,TYPE_1__*,int ,int ,int ,int **) ;
 int GdipCreatePen2 (int *,float,int ,int **) ;
 int GdipDeleteBrush (int *) ;
 int GdipDeletePen (int *) ;
 int InvalidParameter ;
 int Ok ;
 int UnitPixel ;
 int WrapModeTile ;
 int expect (int ,int ) ;
 int ok (int ,char*) ;

__attribute__((used)) static void test_constructor_destructor2(void)
{
    GpStatus status;
    GpPen *pen = ((void*)0);
    GpBrush *brush = ((void*)0);
    GpPointF points[2];

    status = GdipCreatePen2(((void*)0), 10.0f, UnitPixel, &pen);
    expect(InvalidParameter, status);
    ok(pen == ((void*)0), "Expected pen to be NULL\n");

    points[0].X = 7.0;
    points[0].Y = 11.0;
    points[1].X = 13.0;
    points[1].Y = 17.0;

    status = GdipCreateLineBrush(&points[0], &points[1], (ARGB)0xffff00ff,
                    (ARGB)0xff0000ff, WrapModeTile, (GpLineGradient **)&brush);
    expect(Ok, status);
    ok(brush != ((void*)0), "Expected brush to be initialized\n");

    status = GdipCreatePen2(brush, 10.0f, UnitPixel, &pen);
    expect(Ok, status);
    ok(pen != ((void*)0), "Expected pen to be initialized\n");

    status = GdipDeletePen(pen);
    expect(Ok, status);

    status = GdipDeleteBrush(brush);
    expect(Ok, status);
}
