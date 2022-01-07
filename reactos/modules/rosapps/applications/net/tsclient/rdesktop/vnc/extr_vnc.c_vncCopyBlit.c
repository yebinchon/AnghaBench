
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rfbScreenInfoPtr ;


 int rfbDoCopyRect (int ,int,int,int,int,int,int) ;

void
vncCopyBlit(rfbScreenInfoPtr s, int x, int y, int w, int h, int srcx, int srcy)
{

 rfbDoCopyRect(s, x, y, x + w, y + h, x - srcx, y - srcy);
}
