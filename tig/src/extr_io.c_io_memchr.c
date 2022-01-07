
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct buffer {char* data; int size; } ;


 char* memchr (char*,int,int) ;

char *
io_memchr(struct buffer *buf, char *data, int c)
{
 char *pos;

 if (!buf || data < buf->data || buf->data + buf->size <= data)
  return ((void*)0);

 pos = memchr(data, c, buf->size - (data - buf->data));
 return pos ? pos + 1 : ((void*)0);
}
