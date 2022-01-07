
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
 int GdipGetCustomLineCapBaseInset (int *,scalar_t__*) ;
 int InvalidParameter ;
 int LineCapFlat ;
 int Ok ;
 int expect (int ,int ) ;
 int expectf (double,scalar_t__) ;

__attribute__((used)) static void test_inset(void)
{
    GpCustomLineCap *custom;
    GpPath *path;
    REAL inset;
    GpStatus stat;

    stat = GdipCreatePath(FillModeAlternate, &path);
    expect(Ok, stat);
    stat = GdipAddPathRectangle(path, 5.0, 5.0, 10.0, 10.0);
    expect(Ok, stat);

    stat = GdipCreateCustomLineCap(((void*)0), path, LineCapFlat, 0.0, &custom);
    expect(Ok, stat);


    stat = GdipGetCustomLineCapBaseInset(((void*)0), ((void*)0));
    expect(InvalidParameter, stat);
    stat = GdipGetCustomLineCapBaseInset(((void*)0), &inset);
    expect(InvalidParameter, stat);
    stat = GdipGetCustomLineCapBaseInset(custom, ((void*)0));
    expect(InvalidParameter, stat);

    inset = (REAL)0xdeadbeef;
    stat = GdipGetCustomLineCapBaseInset(custom, &inset);
    expect(Ok, stat);
    expectf(0.0, inset);

    GdipDeleteCustomLineCap(custom);
    GdipDeletePath(path);
}
