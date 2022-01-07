
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int h; int linew; TYPE_1__* format; int data; int w; } ;
typedef TYPE_2__ vncBuffer ;
struct TYPE_6__ {int bitsPerPixel; int depth; } ;


 int memcpy (int ,int ,int) ;
 TYPE_2__* vncNewBuffer (int ,int,int ) ;

vncBuffer *
vncDupBuffer(vncBuffer * b)
{
 vncBuffer *buf = vncNewBuffer(b->w, b->h, b->format->depth);
 memcpy(buf->data, b->data, b->linew * b->h * b->format->bitsPerPixel / 8);
 return buf;
}
