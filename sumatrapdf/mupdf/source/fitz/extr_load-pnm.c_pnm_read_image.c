
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct info {int subimages; void* cs; } ;
typedef int fz_pixmap ;
typedef int fz_context ;


 int FZ_ERROR_GENERIC ;
 void* fz_device_gray (int *) ;
 void* fz_device_rgb (int *) ;
 int fz_throw (int *,int ,char*,...) ;
 int * pam_binary_read_image (int *,struct info*,unsigned char const*,unsigned char const*,int,unsigned char const**) ;
 int * pnm_ascii_read_image (int *,struct info*,unsigned char const*,unsigned char const*,int,int,unsigned char const**) ;
 int * pnm_binary_read_image (int *,struct info*,unsigned char const*,unsigned char const*,int,int,unsigned char const**) ;
 unsigned char* pnm_read_signature (int *,unsigned char const*,unsigned char const*,char*) ;
 unsigned char* pnm_read_white (int *,unsigned char const*,unsigned char const*,int ) ;
 int strcmp (char*,char*) ;

__attribute__((used)) static fz_pixmap *
pnm_read_image(fz_context *ctx, struct info *pnm, const unsigned char *p, size_t total, int onlymeta, int subimage)
{
 const unsigned char *e = p + total;
 char signature[3] = { 0 };
 fz_pixmap *pix = ((void*)0);

 while (p < e && ((!onlymeta && subimage >= 0) || onlymeta))
 {
  int subonlymeta = onlymeta || (subimage > 0);

  p = pnm_read_signature(ctx, p, e, signature);
  p = pnm_read_white(ctx, p, e, 0);

  if (!strcmp(signature, "P1"))
  {
   pnm->cs = fz_device_gray(ctx);
   pix = pnm_ascii_read_image(ctx, pnm, p, e, subonlymeta, 1, &p);
  }
  else if (!strcmp(signature, "P2"))
  {
   pnm->cs = fz_device_gray(ctx);
   pix = pnm_ascii_read_image(ctx, pnm, p, e, subonlymeta, 0, &p);
  }
  else if (!strcmp(signature, "P3"))
  {
   pnm->cs = fz_device_rgb(ctx);
   pix = pnm_ascii_read_image(ctx, pnm, p, e, subonlymeta, 0, &p);
  }
  else if (!strcmp(signature, "P4"))
  {
   pnm->cs = fz_device_gray(ctx);
   pix = pnm_binary_read_image(ctx, pnm, p, e, subonlymeta, 1, &p);
  }
  else if (!strcmp(signature, "P5"))
  {
   pnm->cs = fz_device_gray(ctx);
   pix = pnm_binary_read_image(ctx, pnm, p, e, subonlymeta, 0, &p);
  }
  else if (!strcmp(signature, "P6"))
  {
   pnm->cs = fz_device_rgb(ctx);
   pix = pnm_binary_read_image(ctx, pnm, p, e, subonlymeta, 0, &p);
  }
  else if (!strcmp(signature, "P7"))
   pix = pam_binary_read_image(ctx, pnm, p, e, subonlymeta, &p);
  else
   fz_throw(ctx, FZ_ERROR_GENERIC, "unsupported portable anymap signature (0x%02x, 0x%02x)", signature[0], signature[1]);

  if (onlymeta)
   pnm->subimages++;
  if (subimage >= 0)
   subimage--;
 }

 if (p >= e && subimage >= 0)
  fz_throw(ctx, FZ_ERROR_GENERIC, "subimage count out of range");

 return pix;
}
