
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct info {int transparency; unsigned char* palette; int n; unsigned char* trns; int depth; scalar_t__ indexed; } ;
typedef int fz_context ;


 int FZ_ERROR_GENERIC ;
 int fz_throw (int *,int ,char*) ;
 int fz_warn (int *,char*) ;

__attribute__((used)) static void
png_read_trns(fz_context *ctx, struct info *info, const unsigned char *p, unsigned int size)
{
 unsigned int i;

 info->transparency = 1;

 if (info->indexed)
 {
  if (size > 256)
  {
   fz_warn(ctx, "too many samples in transparency table");
   size = 256;
  }
  for (i = 0; i < size; i++)
   info->palette[i * 4 + 3] = p[i];

  for (; i < 256; i++)
   info->palette[i * 4 + 3] = 255;
 }
 else
 {
  if (size != info->n * 2)
   fz_throw(ctx, FZ_ERROR_GENERIC, "tRNS chunk is the wrong size");
  for (i = 0; i < info->n; i++)
   info->trns[i] = (p[i * 2] << 8 | p[i * 2 + 1]) & ((1 << info->depth) - 1);
 }
}
