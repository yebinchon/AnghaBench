
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int owner; int w; int h; int linew; TYPE_2__* format; void* data; } ;
typedef TYPE_1__ vncBuffer ;
struct TYPE_5__ {int bitsPerPixel; } ;


 TYPE_2__* vncNewFormat (int) ;
 scalar_t__ xmalloc (int) ;

vncBuffer *
vncNewBuffer(int w, int h, int depth)
{
 vncBuffer *b = (vncBuffer *) xmalloc(sizeof(vncBuffer));
 b->format = vncNewFormat(depth);
 b->data = (void *) xmalloc(w * h * (b->format->bitsPerPixel / 8));
 b->owner = 1;
 b->w = w;
 b->h = h;
 b->linew = w;
 return b;
}
