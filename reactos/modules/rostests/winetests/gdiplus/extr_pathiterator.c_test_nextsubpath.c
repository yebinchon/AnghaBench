
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int INT ;
typedef int GpStatus ;
typedef int GpPathIterator ;
typedef int GpPath ;
typedef int BOOL ;


 int FillModeAlternate ;
 int GdipCreatePath (int ,int **) ;
 int GdipCreatePathIter (int **,int *) ;
 int GdipDeletePath (int *) ;
 int GdipDeletePathIter (int *) ;
 int GdipPathIterNextSubpath (int *,int*,int*,int*,int*) ;
 int Ok ;
 int TRUE ;
 int expect (int,int) ;

__attribute__((used)) static void test_nextsubpath(void)
{
    GpPath *path;
    GpPathIterator *iter;
    GpStatus stat;
    INT start, end, result;
    BOOL closed;


    GdipCreatePath(FillModeAlternate, &path);
    GdipCreatePathIter(&iter, path);

    result = -2;
    closed = TRUE;
    stat = GdipPathIterNextSubpath(iter, &result, &start, &end, &closed);
    expect(Ok, stat);
    expect(0, result);
    expect(TRUE, closed);

    GdipDeletePathIter(iter);
    GdipDeletePath(path);
}
