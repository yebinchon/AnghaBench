
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int GpStatus ;
typedef int GpMatrix ;


 int GdipCreateMatrix2 (double,double,double,double,double,double,int **) ;
 int GdipDeleteMatrix (int *) ;
 int InvalidParameter ;
 int Ok ;
 int expect (int ,int ) ;
 int ok (int ,char*) ;

__attribute__((used)) static void test_constructor_destructor(void)
{
    GpStatus status;
    GpMatrix *matrix = ((void*)0);

    status = GdipCreateMatrix2(0.0, 0.0, 0.0, 0.0, 0.0, 0.0, &matrix);
    expect(Ok, status);
    ok(matrix != ((void*)0), "Expected matrix to be initialized\n");

    status = GdipDeleteMatrix(((void*)0));
    expect(InvalidParameter, status);

    status = GdipDeleteMatrix(matrix);
    expect(Ok, status);
}
