
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
 int GdipClosePathFigure (int *) ;
 int GdipCreatePath (int ,int **) ;
 int GdipCreatePathIter (int **,int *) ;
 int GdipDeletePath (int *) ;
 int GdipDeletePathIter (int *) ;
 int GdipGetPointCount (int *,int*) ;
 int GdipPathIterNextSubpathPath (int *,int*,int *,int*) ;
 int InvalidParameter ;
 int Ok ;
 int TRUE ;
 int expect (int,int) ;

__attribute__((used)) static void test_nextsubpathpath(void)
{
    GpPath *path, *retpath;
    GpPathIterator *iter;
    GpStatus stat;
    BOOL closed;
    INT count, result;

    GdipCreatePath(FillModeAlternate, &path);


    GdipCreatePath(FillModeAlternate, &retpath);
    GdipCreatePathIter(&iter, path);
    stat = GdipPathIterNextSubpathPath(((void*)0), ((void*)0), ((void*)0), ((void*)0));
    expect(InvalidParameter, stat);
    stat = GdipPathIterNextSubpathPath(iter, ((void*)0), ((void*)0), ((void*)0));
    expect(InvalidParameter, stat);
    stat = GdipPathIterNextSubpathPath(((void*)0), &result, ((void*)0), ((void*)0));
    expect(InvalidParameter, stat);
    stat = GdipPathIterNextSubpathPath(iter, &result, ((void*)0), &closed);
    expect(Ok, stat);
    stat = GdipPathIterNextSubpathPath(iter, ((void*)0), ((void*)0), &closed);
    expect(InvalidParameter, stat);
    stat = GdipPathIterNextSubpathPath(iter, ((void*)0), retpath, ((void*)0));
    expect(InvalidParameter, stat);
    stat = GdipPathIterNextSubpathPath(iter, &result, retpath, ((void*)0));
    expect(InvalidParameter, stat);
    GdipDeletePathIter(iter);
    GdipDeletePath(retpath);


    GdipCreatePath(FillModeAlternate, &retpath);
    GdipCreatePathIter(&iter, path);
    result = -2;
    closed = TRUE;
    stat = GdipPathIterNextSubpathPath(iter, &result, retpath, &closed);
    expect(Ok, stat);
    expect(0, result);
    expect(TRUE, closed);
    count = -1;
    GdipGetPointCount(retpath, &count);
    expect(0, count);
    GdipDeletePathIter(iter);
    GdipDeletePath(retpath);


    GdipAddPathLine(path, 5.0, 5.0, 100.0, 50.0);

    GdipCreatePath(FillModeAlternate, &retpath);
    GdipCreatePathIter(&iter, path);
    result = -2;
    closed = TRUE;
    stat = GdipPathIterNextSubpathPath(iter, &result, retpath, &closed);
    expect(Ok, stat);
    expect(2, result);
    expect(FALSE, closed);
    count = -1;
    GdipGetPointCount(retpath, &count);
    expect(2, count);

    result = -2;
    closed = TRUE;
    stat = GdipPathIterNextSubpathPath(iter, &result, retpath, &closed);
    expect(Ok, stat);
    expect(0, result);
    expect(TRUE, closed);
    count = -1;
    GdipGetPointCount(retpath, &count);
    expect(2, count);
    GdipDeletePathIter(iter);


    GdipAddPathLine(retpath, 50.0, 55.0, 200.0, 150.0);

    GdipClosePathFigure(path);
    GdipAddPathLine(path, 50.0, 55.0, 200.0, 150.0);
    GdipClosePathFigure(path);

    GdipCreatePathIter(&iter, path);
    result = -2;
    closed = FALSE;
    stat = GdipPathIterNextSubpathPath(iter, &result, retpath, &closed);
    expect(Ok, stat);
    expect(2, result);
    expect(TRUE, closed);
    count = -1;
    GdipGetPointCount(retpath, &count);
    expect(2, count);

    result = -2;
    closed = FALSE;
    stat = GdipPathIterNextSubpathPath(iter, &result, retpath, &closed);
    expect(Ok, stat);
    expect(2, result);
    expect(TRUE, closed);
    count = -1;
    GdipGetPointCount(retpath, &count);
    expect(2, count);
    result = -2;
    closed = FALSE;
    stat = GdipPathIterNextSubpathPath(iter, &result, retpath, &closed);
    expect(Ok, stat);
    expect(0, result);
    expect(TRUE, closed);
    count = -1;
    GdipGetPointCount(retpath, &count);
    expect(2, count);
    GdipDeletePathIter(iter);

    GdipDeletePath(retpath);
    GdipDeletePath(path);
}
