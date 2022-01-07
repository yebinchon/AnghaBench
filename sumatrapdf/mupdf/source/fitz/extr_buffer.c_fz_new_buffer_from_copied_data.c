
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int fz_context ;
struct TYPE_4__ {size_t len; int data; } ;
typedef TYPE_1__ fz_buffer ;


 TYPE_1__* fz_new_buffer (int *,size_t) ;
 int memcpy (int ,unsigned char const*,size_t) ;

fz_buffer *
fz_new_buffer_from_copied_data(fz_context *ctx, const unsigned char *data, size_t size)
{
 fz_buffer *b = fz_new_buffer(ctx, size);
 b->len = size;
 memcpy(b->data, data, size);
 return b;
}
