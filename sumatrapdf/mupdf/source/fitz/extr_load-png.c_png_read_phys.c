
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct info {int xres; int yres; } ;
typedef int fz_context ;


 int FZ_ERROR_GENERIC ;
 int fz_throw (int *,int ,char*) ;
 int getuint (unsigned char const*) ;

__attribute__((used)) static void
png_read_phys(fz_context *ctx, struct info *info, const unsigned char *p, unsigned int size)
{
 if (size != 9)
  fz_throw(ctx, FZ_ERROR_GENERIC, "pHYs chunk is the wrong size");
 if (p[8] == 1)
 {
  info->xres = (getuint(p) * 254 + 5000) / 10000;
  info->yres = (getuint(p + 4) * 254 + 5000) / 10000;
 }
}
