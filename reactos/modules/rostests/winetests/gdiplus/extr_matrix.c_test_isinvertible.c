
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int GpStatus ;
typedef int GpMatrix ;
typedef int BOOL ;


 int FALSE ;
 int GdipCreateMatrix2 (double,double,double,double,double,double,int **) ;
 int GdipDeleteMatrix (int *) ;
 int GdipIsMatrixInvertible (int *,int *) ;
 int InvalidParameter ;
 int Ok ;
 int TRUE ;
 int expect (int ,int ) ;

__attribute__((used)) static void test_isinvertible(void)
{
    GpStatus status;
    GpMatrix *matrix = ((void*)0);
    BOOL result;


    status = GdipIsMatrixInvertible(((void*)0), &result);
    expect(InvalidParameter, status);
    status = GdipIsMatrixInvertible((GpMatrix*)0xdeadbeef, ((void*)0));
    expect(InvalidParameter, status);
    status = GdipIsMatrixInvertible(((void*)0), ((void*)0));
    expect(InvalidParameter, status);


    GdipCreateMatrix2(1.0, 1.2, 2.3, -1.0, 2.0, 3.0, &matrix);
    status = GdipIsMatrixInvertible(matrix, &result);
    expect(Ok, status);
    expect(TRUE, result);
    GdipDeleteMatrix(matrix);


    GdipCreateMatrix2(2.0, -1.0, 6.0, -3.0, 2.2, 3.0, &matrix);
    status = GdipIsMatrixInvertible(matrix, &result);
    expect(Ok, status);
    expect(FALSE, result);
    GdipDeleteMatrix(matrix);
}
