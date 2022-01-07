
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * t3procs; int * t3resources; int t3doc; int (* t3freeres ) (int *,int ,int *) ;} ;
typedef TYPE_1__ fz_font ;
typedef int fz_context ;


 int fz_drop_buffer (int *,int ) ;
 int fz_free (int *,int *) ;
 int stub1 (int *,int ,int *) ;

__attribute__((used)) static void
free_resources(fz_context *ctx, fz_font *font)
{
 int i;

 if (font->t3resources)
 {
  font->t3freeres(ctx, font->t3doc, font->t3resources);
  font->t3resources = ((void*)0);
 }

 if (font->t3procs)
 {
  for (i = 0; i < 256; i++)
   fz_drop_buffer(ctx, font->t3procs[i]);
 }
 fz_free(ctx, font->t3procs);
 font->t3procs = ((void*)0);
}
