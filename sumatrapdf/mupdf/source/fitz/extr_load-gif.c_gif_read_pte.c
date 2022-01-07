
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct info {int dummy; } ;
typedef int fz_context ;


 int FZ_ERROR_GENERIC ;
 int fz_throw (int *,int ,char*) ;
 unsigned char const* gif_read_subblocks (int *,struct info*,unsigned char const*,unsigned char const*,int *) ;

__attribute__((used)) static const unsigned char*
gif_read_pte(fz_context *ctx, struct info *info, const unsigned char *p, const unsigned char *end)
{
 if (end - p < 15)
  fz_throw(ctx, FZ_ERROR_GENERIC, "premature end in plain text extension in gif image");
 if (p[2] != 0x0c)
  fz_throw(ctx, FZ_ERROR_GENERIC, "out of range plain text extension block size in gif image");
 return gif_read_subblocks(ctx, info, p + 15, end, ((void*)0));
}
