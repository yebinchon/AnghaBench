
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int GpStatus ;
typedef int GpPath ;
typedef int GpMatrix ;


 int ARRAY_SIZE (int ) ;
 int FALSE ;
 int FillModeAlternate ;
 int GdipAddPathArc (int *,double,double,double,double,double,double) ;
 int GdipAddPathEllipse (int *,double,double,double,double) ;
 int GdipAddPathLine (int *,double,double,double,double) ;
 int GdipCreateMatrix (int **) ;
 int GdipCreatePath (int ,int **) ;
 int GdipDeleteMatrix (int *) ;
 int GdipDeletePath (int *) ;
 int GdipFlattenPath (int *,int *,double) ;
 int GdipResetPath (int *) ;
 int GdipTransformPath (int *,int ) ;
 int InvalidParameter ;
 int Ok ;
 int TRUE ;
 int expect (int ,int ) ;
 int flattenarc_path ;
 int flattenellipse_path ;
 int flattenline_path ;
 int flattenquater_path ;
 int ok_path (int *,int ,int ,int ) ;

__attribute__((used)) static void test_flatten(void)
{
    GpStatus status;
    GpPath *path;
    GpMatrix *m;

    status = GdipCreatePath(FillModeAlternate, &path);
    expect(Ok, status);
    status = GdipCreateMatrix(&m);
    expect(Ok, status);


    status = GdipFlattenPath(((void*)0), ((void*)0), 0.0);
    expect(InvalidParameter, status);
    status = GdipFlattenPath(((void*)0), m, 0.0);
    expect(InvalidParameter, status);


    status = GdipFlattenPath(path, ((void*)0), 1.0);
    expect(Ok, status);

    status = GdipTransformPath(path, 0);
    expect(Ok, status);

    status = GdipAddPathEllipse(path, 0.0, 0.0, 100.0, 50.0);
    expect(Ok, status);

    status = GdipFlattenPath(path, ((void*)0), 1.0);
    expect(Ok, status);
    ok_path(path, flattenellipse_path, ARRAY_SIZE(flattenellipse_path), TRUE);

    status = GdipResetPath(path);
    expect(Ok, status);
    status = GdipAddPathLine(path, 5.0, 10.0, 50.0, 100.0);
    expect(Ok, status);
    status = GdipFlattenPath(path, ((void*)0), 1.0);
    expect(Ok, status);
    ok_path(path, flattenline_path, ARRAY_SIZE(flattenline_path), FALSE);

    status = GdipResetPath(path);
    expect(Ok, status);
    status = GdipAddPathArc(path, 0.0, 0.0, 100.0, 50.0, 0.0, 90.0);
    expect(Ok, status);
    status = GdipFlattenPath(path, ((void*)0), 1.0);
    expect(Ok, status);
    ok_path(path, flattenarc_path, ARRAY_SIZE(flattenarc_path), TRUE);


    status = GdipResetPath(path);
    expect(Ok, status);
    status = GdipAddPathArc(path, 0.0, 0.0, 100.0, 100.0, 0.0, 90.0);
    expect(Ok, status);
    status = GdipFlattenPath(path, ((void*)0), 1.0);
    expect(Ok, status);
    ok_path(path, flattenquater_path, ARRAY_SIZE(flattenquater_path), FALSE);

    GdipDeleteMatrix(m);
    GdipDeletePath(path);
}
