
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct info {int dummy; } ;
typedef int fz_context ;


 unsigned char const* gif_read_subblocks (int *,struct info*,unsigned char const*,unsigned char const*,int *) ;

__attribute__((used)) static const unsigned char *
gif_read_ce(fz_context *ctx, struct info *info, const unsigned char *p, const unsigned char *end)
{
 return gif_read_subblocks(ctx, info, p + 2, end, ((void*)0));
}
