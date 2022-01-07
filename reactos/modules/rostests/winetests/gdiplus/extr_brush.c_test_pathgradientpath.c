
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int GpStatus ;
typedef int GpPathGradient ;
typedef int GpPath ;
typedef int GpBrush ;


 int FillModeWinding ;
 int GdipCreatePath (int ,int **) ;
 int GdipCreatePathGradient (int ,int,int ,int **) ;
 int GdipDeleteBrush (int *) ;
 int GdipDeletePath (int *) ;
 int GdipGetPathGradientPath (int *,int *) ;
 int NotImplemented ;
 int Ok ;
 int WrapModeClamp ;
 int blendcount_ptf ;
 int expect (int ,int ) ;

__attribute__((used)) static void test_pathgradientpath(void)
{
    GpStatus status;
    GpPath *path=((void*)0);
    GpPathGradient *grad=((void*)0);

    status = GdipCreatePathGradient(blendcount_ptf, 2, WrapModeClamp, &grad);
    expect(Ok, status);

    status = GdipGetPathGradientPath(grad, ((void*)0));
    expect(NotImplemented, status);

    status = GdipCreatePath(FillModeWinding, &path);
    expect(Ok, status);

    status = GdipGetPathGradientPath(((void*)0), path);
    expect(NotImplemented, status);

    status = GdipGetPathGradientPath(grad, path);
    expect(NotImplemented, status);

    status = GdipDeletePath(path);
    expect(Ok, status);

    status = GdipDeleteBrush((GpBrush*)grad);
    expect(Ok, status);
}
