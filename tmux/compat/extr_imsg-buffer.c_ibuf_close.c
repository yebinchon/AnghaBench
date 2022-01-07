
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct msgbuf {int dummy; } ;
struct ibuf {int dummy; } ;


 int ibuf_enqueue (struct msgbuf*,struct ibuf*) ;

void
ibuf_close(struct msgbuf *msgbuf, struct ibuf *buf)
{
 ibuf_enqueue(msgbuf, buf);
}
