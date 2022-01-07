
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct info {unsigned char* palette; } ;
typedef int fz_context ;


 int fz_warn (int *,char*) ;

__attribute__((used)) static void
png_read_plte(fz_context *ctx, struct info *info, const unsigned char *p, unsigned int size)
{
 int n = size / 3;
 int i;

 if (n > 256)
 {
  fz_warn(ctx, "too many samples in palette");
  n = 256;
 }

 for (i = 0; i < n; i++)
 {
  info->palette[i * 4] = p[i * 3];
  info->palette[i * 4 + 1] = p[i * 3 + 1];
  info->palette[i * 4 + 2] = p[i * 3 + 2];
 }


 for (; i < 256; i++)
 {
  info->palette[i * 4] = 0;
  info->palette[i * 4 + 1] = 0;
  info->palette[i * 4 + 2] = 0;
 }
}
