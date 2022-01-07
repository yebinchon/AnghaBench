
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int fz_context ;



__attribute__((used)) static void
matrixmult(fz_context *ctx, float leftmatrix[], int nlrow, int nlcol, float rightmatrix[], int nrrow, int nrcol, float result[])
{
 float *curr_row;
 int k, l, j, ncols, nrows;
 float sum;

 nrows = nlrow;
 ncols = nrcol;
 if (nlcol == nrrow)
 {
  for (k = 0; k < nrows; k++)
  {
   curr_row = &(leftmatrix[k*nlcol]);
   for (l = 0; l < ncols; l++)
   {
    sum = 0.0;
    for (j = 0; j < nlcol; j++)
     sum = sum + curr_row[j] * rightmatrix[j*nrcol + l];
    result[k*ncols + l] = sum;
   }
  }
 }
}
