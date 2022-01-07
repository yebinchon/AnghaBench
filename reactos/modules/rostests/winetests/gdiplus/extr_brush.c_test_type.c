
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int GpStatus ;
typedef int GpSolidFill ;
typedef int GpBrushType ;
typedef int GpBrush ;
typedef int ARGB ;


 int BrushTypeSolidColor ;
 int GdipCreateSolidFill (int ,int **) ;
 int GdipDeleteBrush (int *) ;
 int GdipGetBrushType (int *,int *) ;
 int Ok ;
 int expect (int ,int ) ;

__attribute__((used)) static void test_type(void)
{
    GpStatus status;
    GpBrushType bt;
    GpSolidFill *brush = ((void*)0);

    GdipCreateSolidFill((ARGB)0xdeadbeef, &brush);

    status = GdipGetBrushType((GpBrush*)brush, &bt);
    expect(Ok, status);
    expect(BrushTypeSolidColor, bt);

    GdipDeleteBrush((GpBrush*) brush);
}
