
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* crypt; } ;
typedef TYPE_2__ pdf_document ;
typedef int fz_permission ;
typedef int fz_context ;
struct TYPE_4__ {int p; } ;






 int PDF_PERM_ANNOTATE ;
 int PDF_PERM_COPY ;
 int PDF_PERM_MODIFY ;
 int PDF_PERM_PRINT ;

int
pdf_has_permission(fz_context *ctx, pdf_document *doc, fz_permission p)
{
 if (!doc->crypt)
  return 1;
 switch (p)
 {
 case 128: return doc->crypt->p & PDF_PERM_PRINT;
 case 130: return doc->crypt->p & PDF_PERM_COPY;
 case 129: return doc->crypt->p & PDF_PERM_MODIFY;
 case 131: return doc->crypt->p & PDF_PERM_ANNOTATE;
 }
 return 1;
}
