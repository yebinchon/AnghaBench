
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int INT ;
typedef int GpStatus ;
typedef int GpPath ;
typedef int BOOL ;


 int FALSE ;
 int FillModeAlternate ;
 int GdipAddPathRectangle (int *,double,double,double,double) ;
 int GdipCreatePath (int ,int **) ;
 int GdipDeletePath (int *) ;
 int GdipGetPointCount (int *,int *) ;
 int GdipIsVisiblePathPoint (int *,double,double,int *,int *) ;
 int Ok ;
 int expect (int,int ) ;

__attribute__((used)) static void test_empty_rect(void)
{
    GpPath *path;
    GpStatus status;
    INT count;
    BOOL result;

    status = GdipCreatePath(FillModeAlternate, &path);
    expect(Ok, status);

    status = GdipAddPathRectangle(path, 0.0, 0.0, -5.0, 5.0);
    expect(Ok, status);

    status = GdipGetPointCount(path, &count);
    expect(Ok, status);
    expect(0, count);

    status = GdipIsVisiblePathPoint(path, -2.0, 2.0, ((void*)0), &result);
    expect(Ok, status);
    expect(FALSE, result);

    status = GdipAddPathRectangle(path, 0.0, 0.0, 5.0, -5.0);
    expect(Ok, status);

    status = GdipGetPointCount(path, &count);
    expect(Ok, status);
    expect(0, count);

    status = GdipAddPathRectangle(path, 0.0, 0.0, 0.0, 5.0);
    expect(Ok, status);

    status = GdipGetPointCount(path, &count);
    expect(Ok, status);
    expect(0, count);

    status = GdipAddPathRectangle(path, 0.0, 0.0, 5.0, 0.0);
    expect(Ok, status);

    status = GdipGetPointCount(path, &count);
    expect(Ok, status);
    expect(0, count);

    status = GdipAddPathRectangle(path, 0.0, 0.0, 5.0, 0.1);
    expect(Ok, status);

    status = GdipGetPointCount(path, &count);
    expect(Ok, status);
    expect(4, count);

    GdipDeletePath(path);
}
