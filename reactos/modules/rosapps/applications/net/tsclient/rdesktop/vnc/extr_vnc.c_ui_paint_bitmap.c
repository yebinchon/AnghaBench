
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vncBuffer ;
typedef int uint8 ;


 int server ;
 int * ui_create_bitmap (int,int,int *) ;
 int vncCopyBlitFrom (int ,int,int,int,int,int *,int ,int ) ;
 int vncDeleteBuffer (int *) ;

void
ui_paint_bitmap(int x, int y, int cx, int cy, int width, int height, uint8 * data)
{
 vncBuffer *buf;
 buf = ui_create_bitmap(width, height, data);
 vncCopyBlitFrom(server, x, y, cx, cy, buf, 0, 0);
 vncDeleteBuffer(buf);
}
