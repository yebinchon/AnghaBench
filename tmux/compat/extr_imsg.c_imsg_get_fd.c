
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct imsgbuf {int fds; } ;
struct imsg_fd {int fd; } ;


 struct imsg_fd* TAILQ_FIRST (int *) ;
 int TAILQ_REMOVE (int *,struct imsg_fd*,int ) ;
 int entry ;
 int free (struct imsg_fd*) ;

__attribute__((used)) static int
imsg_get_fd(struct imsgbuf *ibuf)
{
 int fd;
 struct imsg_fd *ifd;

 if ((ifd = TAILQ_FIRST(&ibuf->fds)) == ((void*)0))
  return (-1);

 fd = ifd->fd;
 TAILQ_REMOVE(&ibuf->fds, ifd, entry);
 free(ifd);

 return (fd);
}
