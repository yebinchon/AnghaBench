
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct msgbuf {int bufs; } ;
struct ibuf {int dummy; } ;


 struct ibuf* TAILQ_FIRST (int *) ;
 int ibuf_dequeue (struct msgbuf*,struct ibuf*) ;

void
msgbuf_clear(struct msgbuf *msgbuf)
{
 struct ibuf *buf;

 while ((buf = TAILQ_FIRST(&msgbuf->bufs)) != ((void*)0))
  ibuf_dequeue(msgbuf, buf);
}
