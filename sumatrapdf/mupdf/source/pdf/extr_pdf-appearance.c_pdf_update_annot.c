
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int has_new_ap; } ;
typedef TYPE_1__ pdf_annot ;
typedef int fz_context ;


 int pdf_update_appearance (int *,TYPE_1__*) ;

int
pdf_update_annot(fz_context *ctx, pdf_annot *annot)
{
 int changed;

 pdf_update_appearance(ctx, annot);

 changed = annot->has_new_ap;
 annot->has_new_ap = 0;
 return changed;
}
