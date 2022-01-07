
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int GpStatus ;
typedef int GpPath ;


 int ARRAY_SIZE (int ) ;
 int FALSE ;
 int FillModeAlternate ;
 int GdipAddPathPie (int *,double,double,double,double,double,double) ;
 int GdipCreatePath (int ,int **) ;
 int GdipDeletePath (int *) ;
 int GdipResetPath (int *) ;
 int InvalidParameter ;
 int Ok ;
 int addpie_path ;
 int addpie_path2 ;
 int addpie_path3 ;
 int expect (int ,int ) ;
 int ok_path (int *,int ,int ,int ) ;

__attribute__((used)) static void test_addpie(void)
{
    GpStatus status;
    GpPath *path;

    GdipCreatePath(FillModeAlternate, &path);


    status = GdipAddPathPie(((void*)0), 0.0, 0.0, 0.0, 0.0, 0.0, 0.0);
    expect(InvalidParameter, status);

    status = GdipAddPathPie(path, 0.0, 0.0, 100.0, 50.0, 10.0, 50.0);
    expect(Ok, status);
    ok_path(path, addpie_path, ARRAY_SIZE(addpie_path), FALSE);
    status = GdipResetPath(path);
    expect(Ok, status);


    status = GdipAddPathPie(path, 0.0, 0.0, 0.0, 60.0, -90.0, 24.0);
    expect(InvalidParameter, status);
    ok_path(path, addpie_path2, ARRAY_SIZE(addpie_path2), FALSE);
    status = GdipResetPath(path);
    expect(Ok, status);


    status = GdipAddPathPie(path, 0.0, 0.0, 60.0, 0.0 , -90.0, 24.0);
    expect(InvalidParameter, status);
    ok_path(path, addpie_path3, ARRAY_SIZE(addpie_path3), FALSE);

    GdipDeletePath(path);
}
