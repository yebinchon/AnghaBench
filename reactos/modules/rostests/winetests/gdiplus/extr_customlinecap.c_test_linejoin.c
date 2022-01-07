
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int GpStatus ;
typedef int GpPath ;
typedef int GpLineJoin ;
typedef int GpCustomLineCap ;


 int FillModeAlternate ;
 int GdipAddPathRectangle (int *,double,double,double,double) ;
 int GdipCreateCustomLineCap (int *,int *,int ,double,int **) ;
 int GdipCreatePath (int ,int **) ;
 int GdipDeleteCustomLineCap (int *) ;
 int GdipDeletePath (int *) ;
 int GdipGetCustomLineCapStrokeJoin (int *,int *) ;
 int GdipSetCustomLineCapStrokeJoin (int *,int ) ;
 int InvalidParameter ;
 int LineCapFlat ;
 int LineJoinBevel ;
 int LineJoinMiter ;
 int LineJoinMiterClipped ;
 int LineJoinRound ;
 int Ok ;
 int expect (int ,int ) ;

__attribute__((used)) static void test_linejoin(void)
{
    GpCustomLineCap *custom;
    GpPath *path;
    GpLineJoin join;
    GpStatus stat;

    stat = GdipCreatePath(FillModeAlternate, &path);
    expect(Ok, stat);
    stat = GdipAddPathRectangle(path, 5.0, 5.0, 10.0, 10.0);
    expect(Ok, stat);

    stat = GdipCreateCustomLineCap(((void*)0), path, LineCapFlat, 0.0, &custom);
    expect(Ok, stat);


    stat = GdipGetCustomLineCapStrokeJoin(((void*)0), ((void*)0));
    expect(InvalidParameter, stat);
    stat = GdipGetCustomLineCapStrokeJoin(custom, ((void*)0));
    expect(InvalidParameter, stat);
    stat = GdipGetCustomLineCapStrokeJoin(((void*)0), &join);
    expect(InvalidParameter, stat);
    stat = GdipSetCustomLineCapStrokeJoin(((void*)0), LineJoinBevel);
    expect(InvalidParameter, stat);


    stat = GdipGetCustomLineCapStrokeJoin(custom, &join);
    expect(Ok, stat);
    expect(LineJoinMiter, join);


    stat = GdipSetCustomLineCapStrokeJoin(custom, LineJoinBevel);
    expect(Ok, stat);
    stat = GdipGetCustomLineCapStrokeJoin(custom, &join);
    expect(Ok, stat);
    expect(LineJoinBevel, join);
    stat = GdipSetCustomLineCapStrokeJoin(custom, LineJoinRound);
    expect(Ok, stat);
    stat = GdipGetCustomLineCapStrokeJoin(custom, &join);
    expect(Ok, stat);
    expect(LineJoinRound, join);
    stat = GdipSetCustomLineCapStrokeJoin(custom, LineJoinMiterClipped);
    expect(Ok, stat);
    stat = GdipGetCustomLineCapStrokeJoin(custom, &join);
    expect(Ok, stat);
    expect(LineJoinMiterClipped, join);

    GdipDeleteCustomLineCap(custom);
    GdipDeletePath(path);
}
