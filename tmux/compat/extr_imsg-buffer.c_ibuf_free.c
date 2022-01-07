
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ibuf {int size; int buf; } ;


 int free (struct ibuf*) ;
 int freezero (int ,int ) ;

void
ibuf_free(struct ibuf *buf)
{
 if (buf == ((void*)0))
  return;
 freezero(buf->buf, buf->size);
 free(buf);
}
