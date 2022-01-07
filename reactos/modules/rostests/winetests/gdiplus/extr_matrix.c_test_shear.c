
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int GpStatus ;
typedef int GpMatrix ;
typedef int BOOL ;


 int GdipCreateMatrix2 (double,double,double,double,double,double,int **) ;
 int GdipDeleteMatrix (int *) ;
 int GdipIsMatrixEqual (int *,int *,int *) ;
 int GdipShearMatrix (int *,double,double,int ) ;
 int InvalidParameter ;
 int MatrixOrderAppend ;
 int MatrixOrderPrepend ;
 int Ok ;
 int TRUE ;
 int expect (int ,int ) ;

__attribute__((used)) static void test_shear(void)
{
    GpStatus status;
    GpMatrix *matrix = ((void*)0);
    GpMatrix *sheared = ((void*)0);
    BOOL equal;


    status = GdipShearMatrix(((void*)0), 0.0, 0.0, MatrixOrderPrepend);
    expect(InvalidParameter, status);


    GdipCreateMatrix2(1.0, 2.0, 4.0, -1.0, 6.0, 3.0, &matrix);
    status = GdipShearMatrix(matrix, 1.5, 0.0, MatrixOrderPrepend);
    expect(Ok, status);
    GdipCreateMatrix2(1.0, 2.0, 5.5, 2.0, 6.0, 3.0, &sheared);
    GdipIsMatrixEqual(matrix, sheared, &equal);
    expect(TRUE, equal);
    GdipDeleteMatrix(sheared);
    GdipDeleteMatrix(matrix);


    GdipCreateMatrix2(1.0, 2.0, 4.0, -1.0, 6.0, 3.0, &matrix);
    status = GdipShearMatrix(matrix, 1.5, 0.0, MatrixOrderAppend);
    expect(Ok, status);
    GdipCreateMatrix2(4.0, 2.0, 2.5, -1.0, 10.5, 3.0, &sheared);
    GdipIsMatrixEqual(matrix, sheared, &equal);
    expect(TRUE, equal);
    GdipDeleteMatrix(sheared);
    GdipDeleteMatrix(matrix);


    GdipCreateMatrix2(1.0, 2.0, 4.0, -1.0, 6.0, 3.0, &matrix);
    status = GdipShearMatrix(matrix, 0.0, 1.5, MatrixOrderPrepend);
    expect(Ok, status);
    GdipCreateMatrix2(7.0, 0.5, 4.0, -1.0, 6.0, 3.0, &sheared);
    GdipIsMatrixEqual(matrix, sheared, &equal);
    expect(TRUE, equal);
    GdipDeleteMatrix(sheared);
    GdipDeleteMatrix(matrix);


    GdipCreateMatrix2(1.0, 2.0, 4.0, -1.0, 6.0, 3.0, &matrix);
    status = GdipShearMatrix(matrix, 0.0, 1.5, MatrixOrderAppend);
    expect(Ok, status);
    GdipCreateMatrix2(1.0, 3.5, 4.0, 5.0, 6.0, 12.0, &sheared);
    GdipIsMatrixEqual(matrix, sheared, &equal);
    expect(TRUE, equal);
    GdipDeleteMatrix(sheared);
    GdipDeleteMatrix(matrix);


    GdipCreateMatrix2(1.0, 2.0, 4.0, -1.0, 6.0, 3.0, &matrix);
    status = GdipShearMatrix(matrix, 4.0, 1.5, MatrixOrderPrepend);
    expect(Ok, status);
    GdipCreateMatrix2(7.0, 0.5, 8.0, 7.0, 6.0, 3.0, &sheared);
    GdipIsMatrixEqual(matrix, sheared, &equal);
    expect(TRUE, equal);
    GdipDeleteMatrix(sheared);
    GdipDeleteMatrix(matrix);


    GdipCreateMatrix2(1.0, 2.0, 4.0, -1.0, 6.0, 3.0, &matrix);
    status = GdipShearMatrix(matrix, 4.0, 1.5, MatrixOrderAppend);
    expect(Ok, status);
    GdipCreateMatrix2(9.0, 3.5, 0.0, 5.0, 18.0, 12.0, &sheared);
    GdipIsMatrixEqual(matrix, sheared, &equal);
    expect(TRUE, equal);
    GdipDeleteMatrix(sheared);
    GdipDeleteMatrix(matrix);
}
