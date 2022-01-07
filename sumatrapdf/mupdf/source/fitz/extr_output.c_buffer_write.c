
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int fz_context ;
typedef int fz_buffer ;


 int fz_append_data (int *,int *,void const*,size_t) ;

__attribute__((used)) static void
buffer_write(fz_context *ctx, void *opaque, const void *data, size_t len)
{
 fz_buffer *buffer = opaque;
 fz_append_data(ctx, buffer, data, len);
}
