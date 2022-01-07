
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
 int GdipAddPathPath (int *,int *,int ) ;
 int GdipCreatePath (int ,int **) ;
 int GdipDeletePath (int *) ;
 int Ok ;
 int TRUE ;
 int expect (int ,int ) ;
 int ok_path (int *,int ,int ,int ) ;
 int pathpath_path ;

__attribute__((used)) static void test_pathpath(void)
{
    GpStatus status;
    GpPath* path1, *path2;

    GdipCreatePath(FillModeAlternate, &path2);
    GdipAddPathArc(path2, 100.0, 100.0, 500.0, 700.0, 95.0, 100.0);

    GdipCreatePath(FillModeAlternate, &path1);
    GdipAddPathArc(path1, 100.0, 100.0, 500.0, 700.0, 0.0, 90.0);
    status = GdipAddPathPath(path1, path2, FALSE);
    expect(Ok, status);
    GdipAddPathArc(path1, 100.0, 100.0, 500.0, 700.0, -80.0, 100.0);
    status = GdipAddPathPath(path1, path2, TRUE);
    expect(Ok, status);

    ok_path(path1, pathpath_path, ARRAY_SIZE(pathpath_path), FALSE);

    GdipDeletePath(path1);
    GdipDeletePath(path2);
}
