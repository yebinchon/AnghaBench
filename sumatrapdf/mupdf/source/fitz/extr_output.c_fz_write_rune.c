
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int fz_output ;
typedef int fz_context ;


 int fz_runetochar (char*,int) ;
 int fz_write_data (int *,int *,char*,int ) ;

void
fz_write_rune(fz_context *ctx, fz_output *out, int rune)
{
 char data[10];
 fz_write_data(ctx, out, data, fz_runetochar(data, rune));
}
