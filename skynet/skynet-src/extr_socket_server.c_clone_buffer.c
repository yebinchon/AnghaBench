
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct socket_sendbuffer {int type; size_t sz; void const* buffer; } ;


 void* MALLOC (size_t) ;



 size_t USEROBJECT ;
 int memcpy (void*,void const*,size_t) ;

__attribute__((used)) static const void *
clone_buffer(struct socket_sendbuffer *buf, size_t *sz) {
 switch (buf->type) {
 case 130:
  *sz = buf->sz;
  return buf->buffer;
 case 129:
  *sz = USEROBJECT;
  return buf->buffer;
 case 128:

  *sz = buf->sz;
  void * tmp = MALLOC(*sz);
  memcpy(tmp, buf->buffer, *sz);
  return tmp;
 }

 *sz = 0;
 return ((void*)0);
}
