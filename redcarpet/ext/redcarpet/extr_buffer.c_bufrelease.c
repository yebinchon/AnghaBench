
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct buf {struct buf* data; } ;


 int free (struct buf*) ;

void
bufrelease(struct buf *buf)
{
 if (!buf)
  return;

 free(buf->data);
 free(buf);
}
