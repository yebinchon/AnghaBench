
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef double REAL ;
typedef int GpStatus ;
typedef int GpPathGradient ;
typedef int GpBrush ;


 int GdipCreatePathGradient (int ,int,int ,int **) ;
 int GdipDeleteBrush (int *) ;
 int GdipGetPathGradientBlend (int *,double*,double*,int) ;
 int InvalidParameter ;
 int Ok ;
 int WrapModeClamp ;
 int expect (int ,int ) ;
 int expectf (double,double) ;
 int getblend_ptf ;

__attribute__((used)) static void test_getblend(void)
{
    GpStatus status;
    GpPathGradient *brush;
    REAL blends[4];
    REAL pos[4];

    status = GdipCreatePathGradient(getblend_ptf, 2, WrapModeClamp, &brush);
    expect(Ok, status);


    status = GdipGetPathGradientBlend(((void*)0), ((void*)0), ((void*)0), -1);
    expect(InvalidParameter, status);
    status = GdipGetPathGradientBlend(brush,((void*)0), ((void*)0), -1);
    expect(InvalidParameter, status);
    status = GdipGetPathGradientBlend(((void*)0), blends,((void*)0), -1);
    expect(InvalidParameter, status);
    status = GdipGetPathGradientBlend(((void*)0), ((void*)0), pos, -1);
    expect(InvalidParameter, status);
    status = GdipGetPathGradientBlend(((void*)0), ((void*)0), ((void*)0), 1);
    expect(InvalidParameter, status);

    blends[0] = (REAL)0xdeadbeef;
    pos[0] = (REAL)0xdeadbeef;
    status = GdipGetPathGradientBlend(brush, blends, pos, 1);
    expect(Ok, status);
    expectf(1.0, blends[0]);
    expectf((REAL)0xdeadbeef, pos[0]);

    GdipDeleteBrush((GpBrush*) brush);
}
