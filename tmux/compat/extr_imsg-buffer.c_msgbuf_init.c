
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct msgbuf {int fd; int bufs; scalar_t__ queued; } ;


 int TAILQ_INIT (int *) ;

void
msgbuf_init(struct msgbuf *msgbuf)
{
 msgbuf->queued = 0;
 msgbuf->fd = -1;
 TAILQ_INIT(&msgbuf->bufs);
}
