
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int fz_stream ;
typedef int fz_context ;
typedef int fz_compressed_buffer ;


 int * fz_open_image_decomp_stream_from_buffer (int *,int *,int *) ;

fz_stream *
fz_open_compressed_buffer(fz_context *ctx, fz_compressed_buffer *buffer)
{
 return fz_open_image_decomp_stream_from_buffer(ctx, buffer, ((void*)0));
}
