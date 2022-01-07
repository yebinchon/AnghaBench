
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ data; } ;
typedef TYPE_1__ vncBuffer ;
typedef int uint8 ;


 int server ;
 int ui_rect (int,int,int,int,int) ;
 int unimpl (char*,int,int,int,int,int) ;
 TYPE_1__* vncGetRect (int ,int,int,int,int) ;

void
ui_destblt(uint8 opcode,
               int x, int y, int cx, int cy)
{
 int i;
 vncBuffer *buf;

 switch (opcode)
 {
  case 0:
  case 15:
   ui_rect(x, y, cx, cy, 0xff);
   break;
  case 5:
   buf = vncGetRect(server, x, y, cx, cy);
   for (i = 0; i < cx * cy; i++)
    ((char *) (buf->data))[i] = !((char *) (buf->data))[i];
   break;
  default:
   unimpl("ui_destblt: opcode=%d %d,%d %dx%d\n", opcode, x, y, cx, cy);
 }
}
