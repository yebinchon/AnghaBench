
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct iovec {scalar_t__ iov_len; int iov_base; } ;
struct imsgbuf {int dummy; } ;
struct ibuf {int fd; } ;
typedef int pid_t ;


 int imsg_add (struct ibuf*,int ,scalar_t__) ;
 int imsg_close (struct imsgbuf*,struct ibuf*) ;
 struct ibuf* imsg_create (struct imsgbuf*,int ,int ,int ,int) ;

int
imsg_composev(struct imsgbuf *ibuf, uint32_t type, uint32_t peerid, pid_t pid,
    int fd, const struct iovec *iov, int iovcnt)
{
 struct ibuf *wbuf;
 int i, datalen = 0;

 for (i = 0; i < iovcnt; i++)
  datalen += iov[i].iov_len;

 if ((wbuf = imsg_create(ibuf, type, peerid, pid, datalen)) == ((void*)0))
  return (-1);

 for (i = 0; i < iovcnt; i++)
  if (imsg_add(wbuf, iov[i].iov_base, iov[i].iov_len) == -1)
   return (-1);

 wbuf->fd = fd;

 imsg_close(ibuf, wbuf);

 return (1);
}
