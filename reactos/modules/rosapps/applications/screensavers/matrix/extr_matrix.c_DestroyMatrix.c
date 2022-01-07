
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int numcols; int hbmBitmap; int hdcBitmap; TYPE_1__* column; } ;
struct TYPE_5__ {TYPE_2__* glyph; } ;
typedef TYPE_2__ MATRIX ;


 int DeleteDC (int ) ;
 int DeleteObject (int ) ;
 int free (TYPE_2__*) ;

void DestroyMatrix(MATRIX *matrix)
{
 int x;


 for(x = 0; x < matrix->numcols; x++)
  free(matrix->column[x].glyph);

 DeleteDC(matrix->hdcBitmap);
 DeleteObject(matrix->hbmBitmap);


 free(matrix);
}
