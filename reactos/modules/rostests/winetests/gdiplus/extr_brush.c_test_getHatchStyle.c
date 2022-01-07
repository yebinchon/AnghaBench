
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int GpStatus ;
typedef int GpHatchStyle ;
typedef int GpHatch ;
typedef int GpBrush ;


 int GdipCreateHatchBrush (int ,int,int,int **) ;
 int GdipDeleteBrush (int *) ;
 int GdipGetHatchStyle (int *,int *) ;
 int HatchStyleHorizontal ;
 int InvalidParameter ;
 int Ok ;
 int expect (int ,int ) ;

__attribute__((used)) static void test_getHatchStyle(void)
{
    GpStatus status;
    GpHatch *brush;
    GpHatchStyle hatchStyle;

    GdipCreateHatchBrush(HatchStyleHorizontal, 11, 12, &brush);

    status = GdipGetHatchStyle(((void*)0), &hatchStyle);
    expect(InvalidParameter, status);

    status = GdipGetHatchStyle(brush, ((void*)0));
    expect(InvalidParameter, status);

    status = GdipGetHatchStyle(brush, &hatchStyle);
    expect(Ok, status);
    expect(HatchStyleHorizontal, hatchStyle);

    GdipDeleteBrush((GpBrush *)brush);
}
