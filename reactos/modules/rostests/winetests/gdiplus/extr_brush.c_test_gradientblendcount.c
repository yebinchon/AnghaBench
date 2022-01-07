
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int INT ;
typedef int GpStatus ;
typedef int GpPathGradient ;
typedef int GpBrush ;


 int GdipCreatePathGradient (int ,int,int ,int **) ;
 int GdipDeleteBrush (int *) ;
 int GdipGetPathGradientBlendCount (int *,int *) ;
 int InvalidParameter ;
 int Ok ;
 int WrapModeClamp ;
 int blendcount_ptf ;
 int expect (int,int ) ;

__attribute__((used)) static void test_gradientblendcount(void)
{
    GpStatus status;
    GpPathGradient *brush;
    INT count;

    status = GdipCreatePathGradient(blendcount_ptf, 2, WrapModeClamp, &brush);
    expect(Ok, status);

    status = GdipGetPathGradientBlendCount(((void*)0), ((void*)0));
    expect(InvalidParameter, status);
    status = GdipGetPathGradientBlendCount(((void*)0), &count);
    expect(InvalidParameter, status);
    status = GdipGetPathGradientBlendCount(brush, ((void*)0));
    expect(InvalidParameter, status);

    status = GdipGetPathGradientBlendCount(brush, &count);
    expect(Ok, status);
    expect(1, count);

    GdipDeleteBrush((GpBrush*) brush);
}
