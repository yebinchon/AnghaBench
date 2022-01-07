
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int fz_deflate_level ;
typedef int fz_context ;
typedef int fz_buffer ;


 size_t fz_buffer_storage (int *,int *,unsigned char**) ;
 unsigned char* fz_new_deflated_data (int *,size_t*,unsigned char*,size_t,int ) ;

unsigned char *fz_new_deflated_data_from_buffer(fz_context *ctx, size_t *compressed_length, fz_buffer *buffer, fz_deflate_level level)
{
 unsigned char *data;
 size_t size = fz_buffer_storage(ctx, buffer, &data);

 if (size == 0 || data == ((void*)0))
 {
  *compressed_length = 0;
  return ((void*)0);
 }

 return fz_new_deflated_data(ctx, compressed_length, data, size, level);
}
