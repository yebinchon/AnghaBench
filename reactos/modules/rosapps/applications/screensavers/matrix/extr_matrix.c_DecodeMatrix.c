
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int numcols; scalar_t__ message; int * column; } ;
typedef TYPE_1__ MATRIX ;
typedef int HWND ;
typedef int HDC ;


 int DoMatrixMessage (int ,TYPE_1__*) ;
 int GLYPH_WIDTH ;
 int GetDC (int ) ;
 int RandomMatrixColumn (int *) ;
 int RedrawMatrixColumn (int *,TYPE_1__*,int ,int) ;
 int ReleaseDC (int ,int ) ;
 int ScrollMatrixColumn (int *) ;

void DecodeMatrix(HWND hwnd, MATRIX *matrix)
{
 int x;
 HDC hdc = GetDC(hwnd);

 for(x = 0; x < matrix->numcols; x++)
 {
  RandomMatrixColumn(&matrix->column[x]);
  ScrollMatrixColumn(&matrix->column[x]);
  RedrawMatrixColumn(&matrix->column[x], matrix, hdc, x * GLYPH_WIDTH);
 }

 if(matrix->message)
  DoMatrixMessage(hdc, matrix);

 ReleaseDC(hwnd, hdc);
}
