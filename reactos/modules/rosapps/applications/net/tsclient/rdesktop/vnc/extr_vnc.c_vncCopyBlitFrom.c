
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vncBuffer ;
typedef int rfbScreenInfoPtr ;


 int rfbMarkRectAsModified (int ,int,int,int,int) ;
 int vncCopyBlitFromNoEncode (int ,int,int,int,int,int *,int,int) ;

void
vncCopyBlitFrom(rfbScreenInfoPtr s, int x, int y, int w, int h, vncBuffer * src, int srcx, int srcy)
{
 vncCopyBlitFromNoEncode(s, x, y, w, h, src, srcx, srcy);
 rfbMarkRectAsModified(s, x, y, x + w, y + h);
}
