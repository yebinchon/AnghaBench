
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int fz_output ;
typedef int fz_context ;


 int fz_write_data (int *,int *,unsigned char const*,int) ;

void
fz_write_pwg_file_header(fz_context *ctx, fz_output *out)
{
 static const unsigned char pwgsig[4] = { 'R', 'a', 'S', '2' };


 fz_write_data(ctx, out, pwgsig, 4);
}
