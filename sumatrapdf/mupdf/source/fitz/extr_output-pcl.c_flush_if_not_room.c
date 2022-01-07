
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int fz_output ;
typedef int fz_context ;


 int fz_write_data (int *,int *,unsigned char const*,int) ;
 int fz_write_printf (int *,int *,char*,int) ;

__attribute__((used)) static void flush_if_not_room(fz_context *ctx, fz_output *out, const unsigned char *comp, int *fill, int len)
{
 if (len + *fill >= 32767)
 {

  fz_write_printf(ctx, out, "\033*b%dW", *fill);
  fz_write_data(ctx, out, comp, *fill);
  *fill = 0;
 }
}
