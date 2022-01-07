
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {struct TYPE_5__* outline; struct TYPE_5__* name; struct TYPE_5__* next; } ;
typedef TYPE_1__ xps_fixdoc ;
struct TYPE_6__ {int * last_fixdoc; TYPE_1__* first_fixdoc; } ;
typedef TYPE_2__ xps_document ;
typedef int fz_context ;


 int fz_free (int *,TYPE_1__*) ;

__attribute__((used)) static void
xps_drop_fixed_documents(fz_context *ctx, xps_document *doc)
{
 xps_fixdoc *fixdoc = doc->first_fixdoc;
 while (fixdoc)
 {
  xps_fixdoc *next = fixdoc->next;
  fz_free(ctx, fixdoc->name);
  fz_free(ctx, fixdoc->outline);
  fz_free(ctx, fixdoc);
  fixdoc = next;
 }
 doc->first_fixdoc = ((void*)0);
 doc->last_fixdoc = ((void*)0);
}
