
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int numcols; int numrows; int width; int height; scalar_t__ message; int hbmBitmap; int hdcBitmap; TYPE_1__* column; } ;
struct TYPE_4__ {int length; int countdown; int state; int runlen; scalar_t__* glyph; int started; } ;
typedef int MATRIX_COLUMN ;
typedef TYPE_2__ MATRIX ;
typedef int HWND ;
typedef int HDC ;
typedef int GLYPH ;


 int CreateCompatibleDC (int ) ;
 int FALSE ;
 int GLYPH_HEIGHT ;
 int GLYPH_WIDTH ;
 int GetDC (int *) ;
 int GetModuleHandle (int ) ;
 scalar_t__ GetParent (int ) ;
 int IDB_BITMAP1 ;
 scalar_t__ InitMatrixMessage (int ,int,int) ;
 int LoadBitmap (int ,int ) ;
 int MAKEINTRESOURCE (int ) ;
 int ReleaseDC (int *,int ) ;
 int SelectObject (int ,int ) ;
 int crc_rand () ;
 void* malloc (int) ;

MATRIX *CreateMatrix(HWND hwnd, int width, int height)
{
 MATRIX *matrix;
 HDC hdc;
 int x, y;

 int rows = height / GLYPH_HEIGHT + 1;
 int cols = width / GLYPH_WIDTH + 1;


 if((matrix = malloc(sizeof(MATRIX) + sizeof(MATRIX_COLUMN) * cols)) == 0)
  return 0;

 matrix->numcols = cols;
 matrix->numrows = rows;
 matrix->width = width;
 matrix->height = height;

 for(x = 0; x < cols; x++)
 {
  matrix->column[x].length = rows;
  matrix->column[x].started = FALSE;
  matrix->column[x].countdown = crc_rand() % 100;
  matrix->column[x].state = crc_rand() % 2;
  matrix->column[x].runlen = crc_rand() % 20 + 3;

  matrix->column[x].glyph = malloc(sizeof(GLYPH) * (rows+16));

  for(y = 0; y < rows; y++)
   matrix->column[x].glyph[y] = 0;
 }


 hdc = GetDC(((void*)0));
 matrix->hbmBitmap = LoadBitmap(GetModuleHandle(0), MAKEINTRESOURCE(IDB_BITMAP1));
 matrix->hdcBitmap = CreateCompatibleDC(hdc);
 SelectObject(matrix->hdcBitmap, matrix->hbmBitmap);
 ReleaseDC(((void*)0), hdc);



 if(GetParent(hwnd) == 0)
  matrix->message = InitMatrixMessage(hwnd, matrix->numcols, matrix->numrows);
 else
  matrix->message = 0;

 return matrix;
}
