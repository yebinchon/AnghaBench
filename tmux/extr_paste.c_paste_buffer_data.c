
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct paste_buffer {size_t size; char const* data; } ;



const char *
paste_buffer_data(struct paste_buffer *pb, size_t *size)
{
 if (size != ((void*)0))
  *size = pb->size;
 return (pb->data);
}
