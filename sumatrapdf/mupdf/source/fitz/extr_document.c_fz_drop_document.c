
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int (* drop_document ) (int *,TYPE_1__*) ;int refs; } ;
typedef TYPE_1__ fz_document ;
typedef int fz_context ;


 scalar_t__ fz_drop_imp (int *,TYPE_1__*,int *) ;
 int fz_free (int *,TYPE_1__*) ;
 int stub1 (int *,TYPE_1__*) ;

void
fz_drop_document(fz_context *ctx, fz_document *doc)
{
 if (fz_drop_imp(ctx, doc, &doc->refs))
 {
  if (doc->drop_document)
   doc->drop_document(ctx, doc);
  fz_free(ctx, doc);
 }
}
