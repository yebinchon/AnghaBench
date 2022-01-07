
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef double REAL ;
typedef scalar_t__ GpStatus ;
typedef int GpPen ;
typedef scalar_t__ GpDashStyle ;


 scalar_t__ DashStyleCustom ;
 scalar_t__ DashStyleDot ;
 scalar_t__ DashStyleSolid ;
 int GdipCreatePen1 (int,double,int ,int **) ;
 int GdipDeletePen (int *) ;
 scalar_t__ GdipGetPenDashArray (int *,double*,int) ;
 int GdipGetPenDashStyle (int *,scalar_t__*) ;
 scalar_t__ GdipSetPenDashArray (int *,double*,int) ;
 int GdipSetPenDashStyle (int *,scalar_t__) ;
 scalar_t__ InvalidParameter ;
 scalar_t__ Ok ;
 scalar_t__ OutOfMemory ;
 int UnitWorld ;
 int expect (scalar_t__,scalar_t__) ;
 int expectf (double,double) ;
 int ok (int,char*,scalar_t__) ;

__attribute__((used)) static void test_dasharray(void)
{
    GpPen *pen;
    GpDashStyle style;
    GpStatus status;
    REAL dashes[12];

    GdipCreatePen1(0xdeadbeef, 10.0, UnitWorld, &pen);
    dashes[0] = 10.0;
    dashes[1] = 11.0;
    dashes[2] = 12.0;
    dashes[3] = 13.0;
    dashes[4] = 14.0;
    dashes[5] = -100.0;
    dashes[6] = -100.0;
    dashes[7] = dashes[8] = dashes[9] = dashes[10] = dashes[11] = 0.0;


    GdipGetPenDashStyle(pen, &style);
    expect(DashStyleSolid, style);
    status = GdipSetPenDashArray(pen, dashes, 2);
    expect(Ok, status);
    GdipGetPenDashStyle(pen, &style);
    expect(DashStyleCustom, style);



    GdipSetPenDashStyle(pen, DashStyleSolid);
    status = GdipGetPenDashArray(pen, &dashes[5], 2);
    expect(InvalidParameter, status);
    status = GdipGetPenDashArray(pen, &dashes[5], 0);
    expect(Ok, status);


    GdipSetPenDashArray(pen, dashes, 2);
    GdipSetPenDashStyle(pen, DashStyleCustom);
    status = GdipGetPenDashArray(pen, &dashes[5], 2);
    expect(Ok, status);
    expectf(10.0, dashes[5]);
    expectf(11.0, dashes[6]);


    status = GdipSetPenDashArray(pen, dashes, 5);
    expect(Ok, status);
    dashes[5] = -100.0;
    dashes[6] = -100.0;
    status = GdipGetPenDashArray(pen, &dashes[5], 1);
    expect(Ok, status);
    expectf(10.0, dashes[5]);
    expectf(-100.0, dashes[6]);
    dashes[5] = -100.0;
    status = GdipGetPenDashArray(pen, &dashes[5], 6);
    expect(InvalidParameter, status);
    expectf(-100.0, dashes[5]);
    expectf(-100.0, dashes[6]);


    status = GdipSetPenDashArray(pen, &dashes[7], 5);
    expect(InvalidParameter, status);
    dashes[9] = -1.0;
    status = GdipSetPenDashArray(pen, &dashes[7], 5);
    expect(InvalidParameter, status);


    GdipSetPenDashStyle(pen, DashStyleDot);
    if (0)
    {
    status = GdipSetPenDashArray(pen, dashes, 0);
    ok(status == OutOfMemory || status == InvalidParameter,
       "Expected OutOfMemory or InvalidParameter, got %.8x\n", status);
    }
    status = GdipSetPenDashArray(pen, dashes, -1);
    ok(status == OutOfMemory || status == InvalidParameter,
       "Expected OutOfMemory or InvalidParameter, got %.8x\n", status);
    GdipGetPenDashStyle(pen, &style);
    expect(DashStyleDot, style);

    GdipDeletePen(pen);
}
