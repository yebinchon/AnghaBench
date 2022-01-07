
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ REAL ;
typedef int GpStatus ;
typedef int GpPath ;
typedef int GpCustomLineCap ;


 int FillModeAlternate ;
 int GdipAddPathRectangle (int *,double,double,double,double) ;
 int GdipCreateCustomLineCap (int *,int *,int ,double,int **) ;
 int GdipCreatePath (int ,int **) ;
 int GdipDeleteCustomLineCap (int *) ;
 int GdipDeletePath (int *) ;
 int GdipGetCustomLineCapWidthScale (int *,scalar_t__*) ;
 int GdipSetCustomLineCapWidthScale (int *,double) ;
 int InvalidParameter ;
 int LineCapFlat ;
 int Ok ;
 int expect (int ,int ) ;
 int expectf (double,scalar_t__) ;

__attribute__((used)) static void test_scale(void)
{
    GpCustomLineCap *custom;
    GpPath *path;
    REAL scale;
    GpStatus stat;

    stat = GdipCreatePath(FillModeAlternate, &path);
    expect(Ok, stat);
    stat = GdipAddPathRectangle(path, 5.0, 5.0, 10.0, 10.0);
    expect(Ok, stat);

    stat = GdipCreateCustomLineCap(((void*)0), path, LineCapFlat, 0.0, &custom);
    expect(Ok, stat);


    stat = GdipGetCustomLineCapWidthScale(((void*)0), ((void*)0));
    expect(InvalidParameter, stat);
    stat = GdipGetCustomLineCapWidthScale(((void*)0), &scale);
    expect(InvalidParameter, stat);
    stat = GdipGetCustomLineCapWidthScale(custom, ((void*)0));
    expect(InvalidParameter, stat);

    stat = GdipSetCustomLineCapWidthScale(((void*)0), 2.0);
    expect(InvalidParameter, stat);


    scale = (REAL)0xdeadbeef;
    stat = GdipGetCustomLineCapWidthScale(custom, &scale);
    expect(Ok, stat);
    expectf(1.0, scale);


    stat = GdipSetCustomLineCapWidthScale(custom, 2.5);
    expect(Ok, stat);
    scale = (REAL)0xdeadbeef;
    stat = GdipGetCustomLineCapWidthScale(custom, &scale);
    expect(Ok, stat);
    expectf(2.5, scale);

    stat = GdipSetCustomLineCapWidthScale(custom, 42.0);
    expect(Ok, stat);
    scale = (REAL)0xdeadbeef;
    stat = GdipGetCustomLineCapWidthScale(custom, &scale);
    expect(Ok, stat);
    expectf(42.0, scale);

    stat = GdipSetCustomLineCapWidthScale(custom, 3000.0);
    expect(Ok, stat);
    scale = (REAL)0xdeadbeef;
    stat = GdipGetCustomLineCapWidthScale(custom, &scale);
    expect(Ok, stat);
    expectf(3000.0, scale);

    stat = GdipSetCustomLineCapWidthScale(custom, 0.0);
    expect(Ok, stat);
    scale = (REAL)0xdeadbeef;
    stat = GdipGetCustomLineCapWidthScale(custom, &scale);
    expect(Ok, stat);
    expectf(0.0, scale);

    GdipDeleteCustomLineCap(custom);
    GdipDeletePath(path);
}
