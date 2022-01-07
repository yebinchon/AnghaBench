
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {void* t3doc; } ;
typedef TYPE_1__ fz_font ;
typedef int fz_context ;


 int FZ_ERROR_GENERIC ;
 int free_resources (int *,TYPE_1__*) ;
 int fz_throw (int *,int ,char*) ;

void fz_decouple_type3_font(fz_context *ctx, fz_font *font, void *t3doc)
{
 if (!font || !t3doc || font->t3doc == ((void*)0))
  return;

 if (font->t3doc != t3doc)
  fz_throw(ctx, FZ_ERROR_GENERIC, "can't decouple type3 font from a different doc");

 font->t3doc = ((void*)0);
 free_resources(ctx, font);
}
