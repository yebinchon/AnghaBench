
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ queued; } ;
struct imsgbuf {TYPE_1__ w; } ;


 scalar_t__ msgbuf_write (TYPE_1__*) ;

int
imsg_flush(struct imsgbuf *ibuf)
{
 while (ibuf->w.queued)
  if (msgbuf_write(&ibuf->w) <= 0)
   return (-1);
 return (0);
}
