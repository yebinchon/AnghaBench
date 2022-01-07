
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int GpStatus ;
typedef int GpPathIterator ;
typedef int GpPath ;
typedef int BOOL ;


 int FALSE ;
 int FillModeAlternate ;
 int GdipAddPathEllipse (int *,double,double,double,double) ;
 int GdipAddPathRectangle (int *,double,double,double,double) ;
 int GdipCreatePath (int ,int **) ;
 int GdipCreatePathIter (int **,int *) ;
 int GdipDeletePath (int *) ;
 int GdipDeletePathIter (int *) ;
 int GdipPathIterHasCurve (int *,int *) ;
 int InvalidParameter ;
 int Ok ;
 int TRUE ;
 int expect (int ,int ) ;

__attribute__((used)) static void test_hascurve(void)
{
    GpPath *path;
    GpPathIterator *iter;
    GpStatus stat;
    BOOL hasCurve;

    GdipCreatePath(FillModeAlternate, &path);
    GdipAddPathRectangle(path, 5.0, 5.0, 100.0, 50.0);

    stat = GdipCreatePathIter(&iter, path);
    expect(Ok, stat);




    stat = GdipPathIterHasCurve(((void*)0), &hasCurve);
    expect(InvalidParameter, stat);


    stat = GdipPathIterHasCurve(iter, &hasCurve);
    expect(Ok, stat);
    expect(FALSE, hasCurve);

    GdipDeletePathIter(iter);

    stat = GdipAddPathEllipse(path, 0.0, 0.0, 35.0, 70.0);
    expect(Ok, stat);

    stat = GdipCreatePathIter(&iter, path);
    expect(Ok, stat);

    stat = GdipPathIterHasCurve(iter, &hasCurve);
    expect(Ok, stat);
    expect(TRUE, hasCurve);

    GdipDeletePathIter(iter);
    GdipDeletePath(path);
}
