
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int GpStatus ;
typedef int GpPath ;
typedef int GpCustomLineCap ;
typedef int GpAdjustableArrowCap ;
typedef int CustomLineCapType ;


 int CustomLineCapTypeAdjustableArrow ;
 int CustomLineCapTypeDefault ;
 int FillModeAlternate ;
 int GdipAddPathRectangle (int *,double,double,double,double) ;
 int GdipCreateAdjustableArrowCap (double,double,int ,int **) ;
 int GdipCreateCustomLineCap (int *,int *,int ,double,int **) ;
 int GdipCreatePath (int ,int **) ;
 int GdipDeleteCustomLineCap (int *) ;
 int GdipDeletePath (int *) ;
 int GdipGetCustomLineCapType (int *,int*) ;
 int InvalidParameter ;
 int LineCapFlat ;
 int Ok ;
 int TRUE ;
 int ok (int,char*,int) ;

__attribute__((used)) static void test_captype(void)
{
    GpAdjustableArrowCap *arrowcap;
    GpCustomLineCap *custom;
    CustomLineCapType type;
    GpStatus stat;
    GpPath *path;

    stat = GdipGetCustomLineCapType(((void*)0), ((void*)0));
    ok(stat == InvalidParameter, "Unexpected return code, %d\n", stat);

    type = 10;
    stat = GdipGetCustomLineCapType(((void*)0), &type);
    ok(stat == InvalidParameter, "Unexpected return code, %d\n", stat);
    ok(type == 10, "Unexpected cap type, %d\n", type);


    stat = GdipCreatePath(FillModeAlternate, &path);
    ok(stat == Ok, "Failed to create path, %d\n", stat);
    stat = GdipAddPathRectangle(path, 5.0, 5.0, 10.0, 10.0);
    ok(stat == Ok, "AddPathRectangle failed, %d\n", stat);

    stat = GdipCreateCustomLineCap(((void*)0), path, LineCapFlat, 0.0, &custom);
    ok(stat == Ok, "Failed to create cap, %d\n", stat);
    stat = GdipGetCustomLineCapType(custom, &type);
    ok(stat == Ok, "Failed to get cap type, %d\n", stat);
    ok(type == CustomLineCapTypeDefault, "Unexpected cap type %d\n", stat);
    GdipDeleteCustomLineCap(custom);
    GdipDeletePath(path);


    stat = GdipCreateAdjustableArrowCap(17.0, 15.0, TRUE, &arrowcap);
    ok(stat == Ok, "Failed to create adjustable cap, %d\n", stat);

    stat = GdipGetCustomLineCapType((GpCustomLineCap*)arrowcap, &type);
    ok(stat == Ok, "Failed to get cap type, %d\n", stat);
    ok(type == CustomLineCapTypeAdjustableArrow, "Unexpected cap type %d\n", stat);

    GdipDeleteCustomLineCap((GpCustomLineCap*)arrowcap);
}
