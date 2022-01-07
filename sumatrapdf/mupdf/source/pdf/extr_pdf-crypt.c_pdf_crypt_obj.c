
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int pdf_obj ;
struct TYPE_5__ {int strf; } ;
typedef TYPE_1__ pdf_crypt ;
typedef int fz_context ;


 int pdf_compute_object_key (TYPE_1__*,int *,int,int,unsigned char*,int) ;
 int pdf_crypt_obj_imp (int *,TYPE_1__*,int *,unsigned char*,int) ;

void
pdf_crypt_obj(fz_context *ctx, pdf_crypt *crypt, pdf_obj *obj, int num, int gen)
{
 unsigned char key[32];
 int len;

 len = pdf_compute_object_key(crypt, &crypt->strf, num, gen, key, 32);

 pdf_crypt_obj_imp(ctx, crypt, obj, key, len);
}
