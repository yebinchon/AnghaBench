
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* buffer; } ;
typedef TYPE_2__ fz_compressed_buffer ;
struct TYPE_4__ {int cap; } ;



size_t
fz_compressed_buffer_size(fz_compressed_buffer *buffer)
{
 if (buffer && buffer->buffer)
  return (size_t)buffer->buffer->cap;
 return 0;
}
