
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int REAL ;
typedef int GpStatus ;
typedef int GpMatrix ;
typedef int BOOL ;


 int FALSE ;
 int GdipCreateMatrix2 (double,double,double,double,int,int,int **) ;
 int GdipDeleteMatrix (int *) ;
 int GdipGetMatrixElements (int *,int *) ;
 int GdipInvertMatrix (int *) ;
 int GdipIsMatrixEqual (int *,int *,int *) ;
 int InvalidParameter ;
 int Ok ;
 int TRUE ;
 int compare_float (int ,double,int) ;
 int expect (int ,int ) ;
 int ok (int ,char*,int ) ;

__attribute__((used)) static void test_invert(void)
{
    GpStatus status;
    GpMatrix *matrix = ((void*)0);
    GpMatrix *inverted = ((void*)0);
    BOOL equal = FALSE;
    REAL elems[6];


    status = GdipInvertMatrix(((void*)0));
    expect(InvalidParameter, status);


    GdipCreateMatrix2(2.0, -1.0, 6.0, -3.0, 2.2, 3.0, &matrix);
    status = GdipInvertMatrix(matrix);
    expect(InvalidParameter, status);
    GdipDeleteMatrix(matrix);


    GdipCreateMatrix2(3.0, -2.0, 5.0, 2.0, 6.0, 3.0, &matrix);
    status = GdipInvertMatrix(matrix);
    expect(Ok, status);
    GdipCreateMatrix2(2.0/16.0, 2.0/16.0, -5.0/16.0, 3.0/16.0, 3.0/16.0, -21.0/16.0, &inverted);
    GdipIsMatrixEqual(matrix, inverted, &equal);
    expect(TRUE, equal);
    GdipDeleteMatrix(matrix);

    GdipCreateMatrix2(0.0006, 0, 0, 0.0006, 400, 400, &matrix);
    status = GdipInvertMatrix(matrix);
    expect(Ok, status);
    status = GdipGetMatrixElements(matrix, elems);
    expect(Ok, status);
    ok(compare_float(elems[0], 1666.666504, 1), "elems[0] = %.10g\n", elems[0]);
    ok(compare_float(elems[1], 0, 0), "elems[1] = %.10g\n", elems[1]);
    ok(compare_float(elems[2], 0, 0), "elems[2] = %.10g\n", elems[2]);
    ok(compare_float(elems[3], 1666.666504, 1), "elems[3] = %.10g\n", elems[3]);
    ok(compare_float(elems[4], -666666.6875, 1), "elems[4] = %.10g\n", elems[4]);
    ok(compare_float(elems[5], -666666.6875, 1), "elems[5] = %.10g\n", elems[5]);

    GdipDeleteMatrix(inverted);
    GdipDeleteMatrix(matrix);
}
