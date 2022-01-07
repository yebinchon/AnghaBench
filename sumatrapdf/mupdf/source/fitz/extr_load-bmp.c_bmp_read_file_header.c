
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct info {void* offset; void* filesize; } ;
typedef int fz_context ;


 int FZ_ERROR_GENERIC ;
 int fz_throw (int *,int ,char*) ;
 scalar_t__ memcmp (unsigned char const*,char*,int) ;
 void* read32 (unsigned char const*) ;

__attribute__((used)) static const unsigned char *
bmp_read_file_header(fz_context *ctx, struct info *info, const unsigned char *p, const unsigned char *end)
{
 if (end - p < 14)
  fz_throw(ctx, FZ_ERROR_GENERIC, "premature end in file header in bmp image");

 if (memcmp(&p[0], "BM", 2))
  fz_throw(ctx, FZ_ERROR_GENERIC, "invalid signature in bmp image");

 info->filesize = read32(p + 2);
 info->offset = read32(p + 10);

 return p + 14;
}
