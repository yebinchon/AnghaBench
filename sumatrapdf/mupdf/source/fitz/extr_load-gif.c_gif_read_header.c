
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct info {int gif89a; } ;
typedef int fz_context ;


 int FZ_ERROR_GENERIC ;
 int fz_throw (int *,int ,char*) ;
 scalar_t__ memcmp (unsigned char const*,char*,int) ;

__attribute__((used)) static const unsigned char *
gif_read_header(fz_context *ctx, struct info *info, const unsigned char *p, const unsigned char *end)
{
 if (end - p < 6)
  fz_throw(ctx, FZ_ERROR_GENERIC, "premature end in header in gif image");

 if (memcmp(&p[0], "GIF", 3))
  fz_throw(ctx, FZ_ERROR_GENERIC, "invalid signature in gif image");
 if (memcmp(&p[3], "87a", 3) && memcmp(&p[3], "89a", 3))
  fz_throw(ctx, FZ_ERROR_GENERIC, "unsupported version in gif image");

 info->gif89a = !memcmp(p, "GIF89a", 6);

 return p + 6;
}
