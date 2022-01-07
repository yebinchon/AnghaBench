
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int fz_output ;
typedef int fz_context ;


 int fz_write_data (int *,int *,unsigned char const*,int) ;

__attribute__((used)) static void write_data(fz_context *ctx, void *arg, const unsigned char *data, int len)
{
 fz_write_data(ctx, (fz_output *)arg, data, len);
}
