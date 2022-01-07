
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int refs; } ;
typedef TYPE_1__ pdf_annot ;
typedef int fz_context ;


 TYPE_1__* fz_keep_imp (int *,TYPE_1__*,int *) ;

pdf_annot *
pdf_keep_annot(fz_context *ctx, pdf_annot *annot)
{
 return fz_keep_imp(ctx, annot, &annot->refs);
}
