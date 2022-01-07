
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int GpStatus ;
typedef int GpPath ;


 int ARRAY_SIZE (int ) ;
 int FALSE ;
 int FillModeAlternate ;
 int GdipAddPathArc (int *,double,double,double,double,double,double) ;
 int GdipAddPathLineI (int *,double,double,double,double) ;
 int GdipClosePathFigure (int *) ;
 int GdipCreatePath (int ,int **) ;
 int GdipDeletePath (int *) ;
 int Ok ;
 int expect (int ,int ) ;
 int linei_path ;
 int ok_path (int *,int ,int ,int ) ;

__attribute__((used)) static void test_linei(void)
{
    GpStatus status;
    GpPath *path;

    GdipCreatePath(FillModeAlternate, &path);
    status = GdipAddPathLineI(path, 5.0, 5.0, 6.0, 8.0);
    expect(Ok, status);
    GdipAddPathArc(path, 100.0, 100.0, 500.0, 700.0, -80.0, 100.0);
    status = GdipAddPathLineI(path, 15.0, 15.0, 26.0, 28.0);
    expect(Ok, status);
    GdipClosePathFigure(path);
    status = GdipAddPathLineI(path, 35.0, 35.0, 36.0, 38.0);
    expect(Ok, status);

    ok_path(path, linei_path, ARRAY_SIZE(linei_path), FALSE);

    GdipDeletePath(path);
}
