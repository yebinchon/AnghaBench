
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* crypt; } ;
typedef TYPE_2__ pdf_document ;
typedef int fz_context ;
struct TYPE_4__ {int p; } ;



int
pdf_document_permissions(fz_context *ctx, pdf_document *doc)
{
 if (doc->crypt)
  return doc->crypt->p;

 return (int)0xFFFFFFFC;
}
