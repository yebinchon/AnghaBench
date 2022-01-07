
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {float e; float f; int d; int c; int b; int a; } ;
typedef TYPE_1__ fz_matrix ;
typedef int fz_context ;


 float floorf (float) ;
 float fz_matrix_expansion (TYPE_1__) ;

float
fz_subpixel_adjust(fz_context *ctx, fz_matrix *ctm, fz_matrix *subpix_ctm, unsigned char *qe, unsigned char *qf)
{
 float size = fz_matrix_expansion(*ctm);
 int q;
 float pix_e, pix_f, r;




 if (size >= 48)
  q = 0, r = 0.5f;
 else if (size >= 24)
  q = 128, r = 0.25f;
 else
  q = 192, r = 0.125f;


 subpix_ctm->a = ctm->a;
 subpix_ctm->b = ctm->b;
 subpix_ctm->c = ctm->c;
 subpix_ctm->d = ctm->d;
 subpix_ctm->e = ctm->e + r;
 pix_e = floorf(subpix_ctm->e);
 subpix_ctm->e -= pix_e;
 subpix_ctm->f = ctm->f + r;
 pix_f = floorf(subpix_ctm->f);
 subpix_ctm->f -= pix_f;


 *qe = (int)(subpix_ctm->e * 256) & q;
 subpix_ctm->e = *qe / 256.0f;
 *qf = (int)(subpix_ctm->f * 256) & q;
 subpix_ctm->f = *qf / 256.0f;


 ctm->e = subpix_ctm->e + pix_e;
 ctm->f = subpix_ctm->f + pix_f;

 return size;
}
