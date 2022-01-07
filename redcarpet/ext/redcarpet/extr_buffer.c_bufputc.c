
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct buf {int size; int asize; int* data; scalar_t__ unit; } ;


 scalar_t__ BUF_OK ;
 int assert (int) ;
 scalar_t__ bufgrow (struct buf*,int) ;

void
bufputc(struct buf *buf, int c)
{
 assert(buf && buf->unit);

 if (buf->size + 1 > buf->asize && bufgrow(buf, buf->size + 1) < BUF_OK)
  return;

 buf->data[buf->size] = c;
 buf->size += 1;
}
