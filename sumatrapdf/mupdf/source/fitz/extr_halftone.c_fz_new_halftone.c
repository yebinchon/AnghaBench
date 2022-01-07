
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int fz_pixmap ;
struct TYPE_4__ {int refs; int n; int ** comp; } ;
typedef TYPE_1__ fz_halftone ;
typedef int fz_context ;


 TYPE_1__* Memento_label (int ,char*) ;
 int fz_malloc (int *,int) ;

__attribute__((used)) static fz_halftone *
fz_new_halftone(fz_context *ctx, int comps)
{
 fz_halftone *ht;
 int i;

 ht = Memento_label(fz_malloc(ctx, sizeof(fz_halftone) + (comps-1)*sizeof(fz_pixmap *)), "fz_halftone");
 ht->refs = 1;
 ht->n = comps;
 for (i = 0; i < comps; i++)
  ht->comp[i] = ((void*)0);

 return ht;
}
