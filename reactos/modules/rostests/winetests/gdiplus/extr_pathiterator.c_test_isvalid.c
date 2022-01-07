
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int INT ;
typedef int GpStatus ;
typedef int GpPathIterator ;
typedef int GpPath ;
typedef int BOOL ;


 int FALSE ;
 int FillModeAlternate ;
 int GdipAddPathLine (int *,double,double,double,double) ;
 int GdipCreatePath (int ,int **) ;
 int GdipCreatePathIter (int **,int *) ;
 int GdipDeletePath (int *) ;
 int GdipDeletePathIter (int *) ;
 int GdipPathIterIsValid (int *,int *) ;
 int GdipPathIterNextMarker (int *,int *,int *,int *) ;
 int InvalidParameter ;
 int Ok ;
 int TRUE ;
 int expect (int ,int ) ;

__attribute__((used)) static void test_isvalid(void)
{
    GpPath *path;
    GpPathIterator *iter;
    GpStatus stat;
    BOOL isvalid;
    INT start, end, result;

    GdipCreatePath(FillModeAlternate, &path);


    GdipCreatePathIter(&iter, path);
    stat = GdipPathIterIsValid(((void*)0), ((void*)0));
    expect(InvalidParameter, stat);
    stat = GdipPathIterIsValid(iter, ((void*)0));
    expect(InvalidParameter, stat);
    stat = GdipPathIterIsValid(((void*)0), &isvalid);
    expect(InvalidParameter, stat);
    GdipDeletePathIter(iter);


    GdipCreatePathIter(&iter, path);
    isvalid = FALSE;
    stat = GdipPathIterIsValid(iter, &isvalid);
    expect(Ok, stat);
    expect(TRUE, isvalid);
    GdipDeletePathIter(iter);


    stat = GdipAddPathLine(path, 50.0, 50.0, 110.0, 40.0);
    expect(Ok, stat);
    stat = GdipCreatePathIter(&iter, path);
    expect(Ok, stat);
    stat = GdipPathIterNextMarker(iter, &result, &start, &end);
    expect(Ok, stat);
    isvalid = FALSE;
    stat = GdipPathIterIsValid(iter, &isvalid);
    expect(Ok, stat);
    expect(TRUE, isvalid);
    GdipDeletePathIter(iter);

    GdipDeletePath(path);
}
