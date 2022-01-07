
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct info {unsigned char has_transparency; unsigned char transparent; } ;
typedef int fz_context ;


 int FZ_ERROR_GENERIC ;
 int fz_throw (int *,int ,char*) ;

__attribute__((used)) static const unsigned char *
gif_read_gce(fz_context *ctx, struct info *info, const unsigned char *p, const unsigned char *end)
{
 if (end - p < 8)
  fz_throw(ctx, FZ_ERROR_GENERIC, "premature end in graphic control extension in gif image");
 if (p[2] != 0x04)
  fz_throw(ctx, FZ_ERROR_GENERIC, "out of range graphic control extension block size in gif image");

 info->has_transparency = p[3] & 0x1;
 if (info->has_transparency)
  info->transparent = p[6];

 return p + 8;
}
