
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int REAL ;
typedef int GpStatus ;
typedef int GpPen ;
typedef int GpMatrix ;


 int GdipCreateMatrix (int **) ;
 int GdipDeleteMatrix (int *) ;
 int GdipGetMatrixElements (int *,int *) ;
 int GdipGetPenTransform (int *,int *) ;
 int Ok ;
 int expect (int ,int ) ;

__attribute__((used)) static void get_pen_transform(GpPen *pen, REAL *values)
{
    GpMatrix *matrix;
    GpStatus status;

    status = GdipCreateMatrix(&matrix);
    expect(Ok, status);

    status = GdipGetPenTransform(pen, matrix);
    expect(Ok, status);
    status = GdipGetMatrixElements(matrix, values);
    expect(Ok, status);

    GdipDeleteMatrix(matrix);
}
