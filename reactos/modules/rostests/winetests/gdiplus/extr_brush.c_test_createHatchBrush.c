
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int HatchStyle ;
typedef int GpStatus ;
typedef int GpHatch ;
typedef int GpBrush ;


 int GdipCreateHatchBrush (int,int,int,int **) ;
 int GdipDeleteBrush (int *) ;
 int HatchStyle05Percent ;
 int HatchStyleMax ;
 int HatchStyleMin ;
 int InvalidParameter ;
 int Ok ;
 int expect (int ,int ) ;
 int ok (int ,char*) ;

__attribute__((used)) static void test_createHatchBrush(void)
{
    GpStatus status;
    GpHatch *brush;

    status = GdipCreateHatchBrush(HatchStyleMin, 1, 2, &brush);
    expect(Ok, status);
    ok(brush != ((void*)0), "Expected the brush to be initialized.\n");

    GdipDeleteBrush((GpBrush *)brush);

    status = GdipCreateHatchBrush(HatchStyleMax, 1, 2, &brush);
    expect(Ok, status);
    ok(brush != ((void*)0), "Expected the brush to be initialized.\n");

    GdipDeleteBrush((GpBrush *)brush);

    status = GdipCreateHatchBrush(HatchStyle05Percent, 1, 2, ((void*)0));
    expect(InvalidParameter, status);

    status = GdipCreateHatchBrush((HatchStyle)(HatchStyleMin - 1), 1, 2, &brush);
    expect(InvalidParameter, status);

    status = GdipCreateHatchBrush((HatchStyle)(HatchStyleMax + 1), 1, 2, &brush);
    expect(InvalidParameter, status);
}
