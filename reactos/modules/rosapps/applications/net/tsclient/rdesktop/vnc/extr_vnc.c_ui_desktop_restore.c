
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {int data; } ;
typedef TYPE_2__ vncBuffer ;
typedef int uint8 ;
typedef int uint32 ;
struct TYPE_8__ {int bitsPerPixel; } ;
struct TYPE_10__ {TYPE_1__ serverFormat; } ;


 int TOBYTES (int ) ;
 int * cache_get_desktop (int ,int,int,int ) ;
 int memcpy (int ,int *,int) ;
 TYPE_5__* server ;
 int vncCopyBlitFrom (TYPE_5__*,int,int,int,int,TYPE_2__*,int,int) ;
 int vncDeleteBuffer (TYPE_2__*) ;
 TYPE_2__* vncNewBuffer (int,int,int) ;
 scalar_t__ vncwinClipRect (int*,int*,int*,int*) ;

void
ui_desktop_restore(uint32 offset, int x, int y, int cx, int cy)
{
 uint8 *data;
 vncBuffer *buf;
 int ox, oy, srcx, srcy;

 srcx = srcy = 0;
 ox = x;
 oy = y;

 offset *= TOBYTES(server->serverFormat.bitsPerPixel);
 data = cache_get_desktop(offset, cx, cy, TOBYTES(server->serverFormat.bitsPerPixel));
 if (data == ((void*)0))
  return;

 buf = vncNewBuffer(cx, cy, 8);
 memcpy(buf->data, data, cx * cy * 1);

 if (vncwinClipRect(&x, &y, &cx, &cy))
 {
  srcx += x - ox;
  srcy += y - oy;
  vncCopyBlitFrom(server, x, y, cx, cy, buf, srcx, srcy);
 }
 vncDeleteBuffer(buf);
}
