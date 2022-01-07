
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int fz_context ;
typedef int fz_buffer ;


 int fz_append_byte (int *,int *,int) ;

__attribute__((used)) static void
fz_append_byte_n(fz_context *ctx, fz_buffer *buf, int c, int n)
{
 int k;
 for (k = 0; k < n; k++)
  fz_append_byte(ctx, buf, c);
}
