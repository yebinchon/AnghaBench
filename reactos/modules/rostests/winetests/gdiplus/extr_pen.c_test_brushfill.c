
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ GpStatus ;
typedef int GpSolidFill ;
typedef int GpPen ;
typedef scalar_t__ GpBrushType ;
typedef int GpBrush ;
typedef scalar_t__ ARGB ;


 int BrushTypeSolidColor ;
 int GdipCreatePen1 (int,double,int ,int **) ;
 int GdipCreateSolidFill (int,int **) ;
 int GdipDeleteBrush (int *) ;
 int GdipDeletePen (int *) ;
 int GdipGetBrushType (int *,scalar_t__*) ;
 scalar_t__ GdipGetPenBrushFill (int *,int **) ;
 int GdipGetPenColor (int *,scalar_t__*) ;
 int GdipGetSolidFillColor (int *,scalar_t__*) ;
 scalar_t__ GdipSetPenBrushFill (int *,int *) ;
 int GdipSetSolidFillColor (int *,int) ;
 int InvalidParameter ;
 int Ok ;
 int UnitWorld ;
 int expect (int,scalar_t__) ;
 int ok (int,char*) ;

__attribute__((used)) static void test_brushfill(void)
{
    GpStatus status;
    GpPen *pen;
    GpBrush *brush, *brush2;
    GpBrushType type;
    ARGB color = 0;


    GdipCreatePen1(0xdeadbeef, 4.5, UnitWorld, &pen);
    status = GdipGetPenBrushFill(pen, &brush);
    expect(Ok, status);
    GdipGetBrushType(brush, &type);
    expect(BrushTypeSolidColor, type);
    GdipGetPenColor(pen, &color);
    expect(0xdeadbeef, color);
    GdipDeleteBrush(brush);


    GdipCreateSolidFill(0xabaddeed, (GpSolidFill**)&brush);
    status = GdipSetPenBrushFill(pen, brush);
    expect(Ok, status);
    GdipGetPenColor(pen, &color);
    expect(0xabaddeed, color);
    GdipDeleteBrush(brush);
    color = 0;


    GdipGetPenBrushFill(pen, &brush);
    GdipSetSolidFillColor((GpSolidFill*)brush, 0xbeadfeed);
    GdipGetPenBrushFill(pen, &brush2);
    ok(brush != brush2, "Expected to get a clone, not a copy of the reference\n");
    GdipGetSolidFillColor((GpSolidFill*)brush2, &color);
    expect(0xabaddeed, color);
    GdipDeleteBrush(brush);
    GdipDeleteBrush(brush2);


    status = GdipSetPenBrushFill(pen, ((void*)0));
    expect(InvalidParameter, status);

    GdipDeletePen(pen);
}
