
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int fz_output ;
typedef int fz_context ;
typedef int fz_buffer ;


 size_t fz_buffer_storage (int *,int *,unsigned char**) ;
 int fz_write_base64 (int *,int *,unsigned char*,size_t,int) ;

void
fz_write_base64_buffer(fz_context *ctx, fz_output *out, fz_buffer *buf, int newline)
{
 unsigned char *data;
 size_t size = fz_buffer_storage(ctx, buf, &data);
 fz_write_base64(ctx, out, data, size, newline);
}
