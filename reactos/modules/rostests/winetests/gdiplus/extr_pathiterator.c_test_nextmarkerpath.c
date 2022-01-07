
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int INT ;
typedef int GpStatus ;
typedef int GpPathIterator ;
typedef int GpPath ;


 int FillModeAlternate ;
 int GdipAddPathLine (int *,double,double,double,double) ;
 int GdipAddPathRectangle (int *,double,double,double,double) ;
 int GdipCreatePath (int ,int **) ;
 int GdipCreatePathIter (int **,int *) ;
 int GdipDeletePath (int *) ;
 int GdipDeletePathIter (int *) ;
 int GdipGetPointCount (int *,int*) ;
 int GdipPathIterNextMarkerPath (int *,int*,int *) ;
 int GdipSetPathMarker (int *) ;
 int InvalidParameter ;
 int Ok ;
 int expect (int,int) ;

__attribute__((used)) static void test_nextmarkerpath(void)
{
    GpPath *path, *retpath;
    GpPathIterator *iter;
    GpStatus stat;
    INT result, count;

    GdipCreatePath(FillModeAlternate, &path);


    stat = GdipPathIterNextMarkerPath(((void*)0), ((void*)0), ((void*)0));
    expect(InvalidParameter, stat);
    stat = GdipPathIterNextMarkerPath(((void*)0), &result, ((void*)0));
    expect(InvalidParameter, stat);
    stat = GdipPathIterNextMarkerPath(((void*)0), &result, path);
    expect(InvalidParameter, stat);

    GdipAddPathRectangle(path, 5.0, 5.0, 100.0, 50.0);


    GdipCreatePath(FillModeAlternate, &retpath);
    GdipCreatePathIter(&iter, path);
    result = -1;
    stat = GdipPathIterNextMarkerPath(iter, &result, retpath);
    expect(Ok, stat);
    expect(4, result);
    count = -1;
    GdipGetPointCount(retpath, &count);
    expect(4, count);
    result = -1;
    stat = GdipPathIterNextMarkerPath(iter, &result, retpath);
    expect(Ok, stat);
    expect(0, result);
    count = -1;
    GdipGetPointCount(retpath, &count);
    expect(4, count);
    GdipDeletePathIter(iter);
    GdipDeletePath(retpath);


    GdipSetPathMarker(path);
    GdipCreatePath(FillModeAlternate, &retpath);
    GdipCreatePathIter(&iter, path);
    result = -1;
    stat = GdipPathIterNextMarkerPath(iter, &result, retpath);
    expect(Ok, stat);
    expect(4, result);
    count = -1;
    GdipGetPointCount(retpath, &count);
    expect(4, count);
    result = -1;
    stat = GdipPathIterNextMarkerPath(iter, &result, retpath);
    expect(Ok, stat);
    expect(0, result);
    count = -1;
    GdipGetPointCount(retpath, &count);
    expect(4, count);
    GdipDeletePathIter(iter);
    GdipDeletePath(retpath);


    GdipAddPathLine(path, 0.0, 0.0, 10.0, 30.0);
    GdipSetPathMarker(path);
    GdipCreatePath(FillModeAlternate, &retpath);
    GdipCreatePathIter(&iter, path);
    result = -1;
    stat = GdipPathIterNextMarkerPath(iter, &result, retpath);
    expect(Ok, stat);
    expect(4, result);
    result = -1;
    stat = GdipPathIterNextMarkerPath(iter, &result, retpath);
    expect(Ok, stat);
    expect(2, result);
    result = -1;
    stat = GdipPathIterNextMarkerPath(iter, &result, retpath);
    expect(Ok, stat);
    expect(0, result);
    GdipDeletePathIter(iter);
    GdipDeletePath(retpath);

    GdipDeletePath(path);
}
