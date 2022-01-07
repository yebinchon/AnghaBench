
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {double X; double Y; } ;
typedef int GpStatus ;
typedef int GpSolidFill ;
typedef TYPE_1__ GpPointF ;
typedef int GpPenType ;
typedef int GpPen ;
typedef int GpLineGradient ;
typedef int GpBrush ;
typedef int ARGB ;


 int GdipCreateLineBrush (TYPE_1__*,TYPE_1__*,int ,int ,int ,int **) ;
 int GdipCreatePen1 (int ,float,int ,int **) ;
 int GdipCreatePen2 (int *,float,int ,int **) ;
 int GdipCreateSolidFill (int ,int **) ;
 int GdipDeleteBrush (int *) ;
 int GdipDeletePen (int *) ;
 int GdipGetPenFillType (int *,int *) ;
 int InvalidParameter ;
 int Ok ;
 int PenTypeLinearGradient ;
 int PenTypeSolidColor ;
 int UnitPixel ;
 int WrapModeTile ;
 int expect (int ,int ) ;

__attribute__((used)) static void test_penfilltype(void)
{
    GpPen *pen;
    GpSolidFill *solid;
    GpLineGradient *line;
    GpPointF a, b;
    GpStatus status;
    GpPenType type;


    status = GdipGetPenFillType(((void*)0), ((void*)0));
    expect(InvalidParameter, status);

    status = GdipCreatePen1((ARGB)0xffff00ff, 10.0f, UnitPixel, &pen);
    expect(Ok, status);
    status = GdipGetPenFillType(pen, ((void*)0));
    expect(InvalidParameter, status);


    status = GdipGetPenFillType(pen, &type);
    expect(Ok, status);
    expect(PenTypeSolidColor, type);
    GdipDeletePen(pen);


    status = GdipCreateSolidFill((ARGB)0xffff00ff, &solid);
    expect(Ok, status);
    status = GdipCreatePen2((GpBrush*)solid, 10.0f, UnitPixel, &pen);
    expect(Ok, status);
    status = GdipGetPenFillType(pen, &type);
    expect(Ok, status);
    expect(PenTypeSolidColor, type);
    GdipDeletePen(pen);
    GdipDeleteBrush((GpBrush*)solid);


    a.X = a.Y = 0.0;
    b.X = b.Y = 10.0;
    status = GdipCreateLineBrush(&a, &b, (ARGB)0xffff00ff, (ARGB)0xffff0000,
                                 WrapModeTile, &line);
    expect(Ok, status);
    status = GdipCreatePen2((GpBrush*)line, 10.0f, UnitPixel, &pen);
    expect(Ok, status);
    status = GdipGetPenFillType(pen, &type);
    expect(Ok, status);
    expect(PenTypeLinearGradient, type);
    GdipDeletePen(pen);
    GdipDeleteBrush((GpBrush*)line);
}
