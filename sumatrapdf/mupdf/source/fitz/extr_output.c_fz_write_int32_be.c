
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int fz_output ;
typedef int fz_context ;


 int fz_write_data (int *,int *,char*,int) ;

void
fz_write_int32_be(fz_context *ctx, fz_output *out, int x)
{
 char data[4];

 data[0] = x>>24;
 data[1] = x>>16;
 data[2] = x>>8;
 data[3] = x;

 fz_write_data(ctx, out, data, 4);
}
