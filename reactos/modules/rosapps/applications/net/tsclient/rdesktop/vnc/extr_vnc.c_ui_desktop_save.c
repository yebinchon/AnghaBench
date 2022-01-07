
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int data; } ;
typedef TYPE_2__ vncBuffer ;
typedef int uint32 ;
struct TYPE_6__ {int bitsPerPixel; } ;
struct TYPE_8__ {TYPE_1__ serverFormat; } ;


 int TOBYTES (int ) ;
 int cache_put_desktop (int ,int,int,int,int ,int ) ;
 TYPE_4__* server ;
 TYPE_2__* vncGetRect (TYPE_4__*,int,int,int,int) ;

void
ui_desktop_save(uint32 offset, int x, int y, int cx, int cy)
{
 vncBuffer *buf;

 buf = vncGetRect(server, x, y, cx, cy);
 offset *= TOBYTES(server->serverFormat.bitsPerPixel);
 cache_put_desktop(offset, cx, cy, cx, TOBYTES(server->serverFormat.bitsPerPixel),
     (buf->data));
}
