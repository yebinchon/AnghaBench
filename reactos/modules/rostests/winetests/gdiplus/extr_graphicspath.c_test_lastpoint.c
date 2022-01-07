
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {double X; double Y; } ;
typedef int GpStatus ;
typedef TYPE_1__ GpPointF ;
typedef int GpPath ;


 int FillModeAlternate ;
 int GdipAddPathRectangle (int *,double,double,double,double) ;
 int GdipCreatePath (int ,int **) ;
 int GdipDeletePath (int *) ;
 int GdipGetPathLastPoint (int *,TYPE_1__*) ;
 int InvalidParameter ;
 int Ok ;
 int TRUE ;
 int expect (int ,int) ;

__attribute__((used)) static void test_lastpoint(void)
{
    GpStatus status;
    GpPath *path;
    GpPointF ptf;

    GdipCreatePath(FillModeAlternate, &path);
    status = GdipAddPathRectangle(path, 5.0, 5.0, 100.0, 50.0);
    expect(Ok, status);


    status = GdipGetPathLastPoint(((void*)0), &ptf);
    expect(InvalidParameter, status);
    status = GdipGetPathLastPoint(path, ((void*)0));
    expect(InvalidParameter, status);
    status = GdipGetPathLastPoint(((void*)0), ((void*)0));
    expect(InvalidParameter, status);

    status = GdipGetPathLastPoint(path, &ptf);
    expect(Ok, status);
    expect(TRUE, (ptf.X == 5.0) && (ptf.Y == 55.0));

    GdipDeletePath(path);
}
