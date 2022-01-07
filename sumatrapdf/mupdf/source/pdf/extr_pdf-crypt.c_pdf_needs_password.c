
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int crypt; } ;
typedef TYPE_1__ pdf_document ;
typedef int fz_context ;


 scalar_t__ pdf_authenticate_password (int *,TYPE_1__*,char*) ;

int
pdf_needs_password(fz_context *ctx, pdf_document *doc)
{
 if (!doc->crypt)
  return 0;
 if (pdf_authenticate_password(ctx, doc, ""))
  return 0;
 return 1;
}
