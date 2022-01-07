
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int width; int height; int** message; } ;
typedef TYPE_1__ MATRIX_MESSAGE ;
typedef int MATRIX ;
typedef int HDC ;


 int DrawGlyph (int *,int ,int,int,int ) ;
 int GLYPH_HEIGHT ;
 int GLYPH_WIDTH ;
 int MAX_INTENSITY ;
 int RandomGlyph (int ) ;

void DrawMatrixMessage(MATRIX *matrix, MATRIX_MESSAGE *msg, HDC hdc)
{
 int x, y;

 for(x = 0; x < msg->width; x++)
  for(y = 0; y < msg->height; y++)
   if((msg->message[x][y] & 0x8000) &&
      (msg->message[x][y] & 0x00FF))
   {
    DrawGlyph(matrix, hdc, x * GLYPH_WIDTH, y * GLYPH_HEIGHT, RandomGlyph(MAX_INTENSITY));
   }
}
