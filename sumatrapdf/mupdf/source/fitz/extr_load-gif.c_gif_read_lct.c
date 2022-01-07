
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct info {int lct_entries; int lct; } ;
typedef int fz_context ;


 int FZ_ERROR_GENERIC ;
 int fz_malloc (int *,int) ;
 int fz_throw (int *,int ,char*) ;
 int memmove (int ,unsigned char const*,int) ;

__attribute__((used)) static const unsigned char *
gif_read_lct(fz_context *ctx, struct info *info, const unsigned char *p, const unsigned char *end)
{
 if (end - p < info->lct_entries * 3)
  fz_throw(ctx, FZ_ERROR_GENERIC, "premature end in local color table in gif image");

 info->lct = fz_malloc(ctx, info->lct_entries * 3);
 memmove(info->lct, p, info->lct_entries * 3);

 return p + info->lct_entries * 3;
}
