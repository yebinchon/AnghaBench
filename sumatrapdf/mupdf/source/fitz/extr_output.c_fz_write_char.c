
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int fz_output ;
typedef int fz_context ;


 int fz_write_byte (int *,int *,unsigned char) ;

void
fz_write_char(fz_context *ctx, fz_output *out, char x)
{
 fz_write_byte(ctx, out, (unsigned char)x);
}
