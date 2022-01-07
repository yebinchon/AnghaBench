
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int width; int height; scalar_t__** message; } ;
typedef TYPE_1__ MATRIX_MESSAGE ;



void ClearMatrixMessage(MATRIX_MESSAGE *msg)
{
 int x, y;

 for(x = 0; x < msg->width; x++)
  for(y = 0; y < msg->height; y++)
   msg->message[x][y] = 0;
}
