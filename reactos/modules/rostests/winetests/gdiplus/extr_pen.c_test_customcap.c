
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int GpStatus ;
typedef int GpPen ;
typedef int GpCustomLineCap ;
typedef int ARGB ;


 int GdipCreatePen1 (int ,float,int ,int **) ;
 int GdipDeletePen (int *) ;
 int GdipGetPenCustomEndCap (int *,int **) ;
 int GdipGetPenCustomStartCap (int *,int **) ;
 int GdipSetPenCustomEndCap (int *,int *) ;
 int GdipSetPenCustomStartCap (int *,int *) ;
 int InvalidParameter ;
 int Ok ;
 int UnitPixel ;
 int expect (int ,int ) ;
 int ok (int ,char*) ;

__attribute__((used)) static void test_customcap(void)
{
    GpPen *pen;
    GpStatus status;
    GpCustomLineCap *custom;

    status = GdipCreatePen1((ARGB)0xffff00ff, 10.0f, UnitPixel, &pen);
    expect(Ok, status);


    status = GdipGetPenCustomStartCap(((void*)0), ((void*)0));
    expect(InvalidParameter, status);
    status = GdipGetPenCustomStartCap(pen, ((void*)0));
    expect(InvalidParameter, status);
    status = GdipGetPenCustomStartCap(((void*)0), &custom);
    expect(InvalidParameter, status);

    status = GdipGetPenCustomEndCap(((void*)0), ((void*)0));
    expect(InvalidParameter, status);
    status = GdipGetPenCustomEndCap(pen, ((void*)0));
    expect(InvalidParameter, status);
    status = GdipGetPenCustomEndCap(((void*)0), &custom);
    expect(InvalidParameter, status);


    status = GdipSetPenCustomStartCap(((void*)0), ((void*)0));
    expect(InvalidParameter, status);
    status = GdipSetPenCustomStartCap(pen, ((void*)0));
    expect(InvalidParameter, status);

    status = GdipSetPenCustomEndCap(((void*)0), ((void*)0));
    expect(InvalidParameter, status);
    status = GdipSetPenCustomEndCap(pen, ((void*)0));
    expect(InvalidParameter, status);


    custom = (GpCustomLineCap*)0xdeadbeef;
    status = GdipGetPenCustomEndCap(pen, &custom);
    expect(Ok, status);
    ok(custom == ((void*)0),"Expect CustomCap == NULL\n");

    custom = (GpCustomLineCap*)0xdeadbeef;
    status = GdipGetPenCustomStartCap(pen, &custom);
    expect(Ok, status);
    ok(custom == ((void*)0),"Expect CustomCap == NULL\n");

    GdipDeletePen(pen);
}
