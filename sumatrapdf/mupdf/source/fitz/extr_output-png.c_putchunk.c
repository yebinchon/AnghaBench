
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int fz_output ;
typedef int fz_context ;


 unsigned int crc32 (unsigned int,unsigned char*,int) ;
 int fz_write_data (int *,int *,...) ;
 int fz_write_int32_be (int *,int *,unsigned int) ;

__attribute__((used)) static void putchunk(fz_context *ctx, fz_output *out, char *tag, unsigned char *data, int size)
{
 unsigned int sum;
 fz_write_int32_be(ctx, out, size);
 fz_write_data(ctx, out, tag, 4);
 fz_write_data(ctx, out, data, size);
 sum = crc32(0, ((void*)0), 0);
 sum = crc32(sum, (unsigned char*)tag, 4);
 sum = crc32(sum, data, size);
 fz_write_int32_be(ctx, out, sum);
}
