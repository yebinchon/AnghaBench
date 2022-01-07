
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int GpStatus ;
typedef int GpMatrix ;
typedef scalar_t__ BOOL ;


 scalar_t__ FALSE ;
 int GdipCreateMatrix2 (double,double,double,double,double,double,int **) ;
 int GdipDeleteMatrix (int *) ;
 int GdipIsMatrixIdentity (int *,scalar_t__*) ;
 int GdipSetMatrixElements (int *,double,double,double,double,double,double) ;
 int InvalidParameter ;
 int Ok ;
 scalar_t__ TRUE ;
 int expect (int ,int ) ;
 int ok (int,char*,scalar_t__) ;

__attribute__((used)) static void test_isidentity(void)
{
    GpMatrix *matrix;
    GpStatus stat;
    BOOL result;

    stat = GdipIsMatrixIdentity(((void*)0), ((void*)0));
    expect(InvalidParameter, stat);

    stat = GdipIsMatrixIdentity(((void*)0), &result);
    expect(InvalidParameter, stat);

    stat = GdipCreateMatrix2(1.0, 0.0, 0.0, 1.0, 0.0, 0.0, &matrix);
    expect(Ok, stat);

    stat = GdipIsMatrixIdentity(matrix, ((void*)0));
    expect(InvalidParameter, stat);

    result = FALSE;
    stat = GdipIsMatrixIdentity(matrix, &result);
    expect(Ok, stat);
    ok(!!result, "got %d\n", result);

    stat = GdipSetMatrixElements(matrix, 1.0, 0.0, 0.0, 1.0, 0.1, 0.0);
    expect(Ok, stat);

    result = TRUE;
    stat = GdipIsMatrixIdentity(matrix, &result);
    expect(Ok, stat);
    ok(!result, "got %d\n", result);

    GdipDeleteMatrix(matrix);
}
