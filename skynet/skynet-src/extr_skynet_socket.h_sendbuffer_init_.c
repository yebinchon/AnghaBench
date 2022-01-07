
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct socket_sendbuffer {int id; size_t sz; int type; void const* buffer; } ;


 int SOCKET_BUFFER_MEMORY ;
 int SOCKET_BUFFER_OBJECT ;

__attribute__((used)) static inline void sendbuffer_init_(struct socket_sendbuffer *buf, int id, const void *buffer, int sz) {
 buf->id = id;
 buf->buffer = buffer;
 if (sz < 0) {
  buf->type = SOCKET_BUFFER_OBJECT;
 } else {
  buf->type = SOCKET_BUFFER_MEMORY;
 }
 buf->sz = (size_t)sz;
}
