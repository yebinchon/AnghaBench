
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ibuf {size_t size; size_t max; int fd; int * buf; } ;


 struct ibuf* calloc (int,int) ;
 int free (struct ibuf*) ;
 int * malloc (size_t) ;

struct ibuf *
ibuf_open(size_t len)
{
 struct ibuf *buf;

 if ((buf = calloc(1, sizeof(struct ibuf))) == ((void*)0))
  return (((void*)0));
 if ((buf->buf = malloc(len)) == ((void*)0)) {
  free(buf);
  return (((void*)0));
 }
 buf->size = buf->max = len;
 buf->fd = -1;

 return (buf);
}
