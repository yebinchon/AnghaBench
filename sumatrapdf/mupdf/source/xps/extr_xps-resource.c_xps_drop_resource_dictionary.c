
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct TYPE_4__* base_uri; int base_xml; struct TYPE_4__* next; } ;
typedef TYPE_1__ xps_resource ;
typedef int xps_document ;
typedef int fz_context ;


 int fz_drop_xml (int *,int ) ;
 int fz_free (int *,TYPE_1__*) ;

void
xps_drop_resource_dictionary(fz_context *ctx, xps_document *doc, xps_resource *dict)
{
 xps_resource *next;
 while (dict)
 {
  next = dict->next;
  fz_drop_xml(ctx, dict->base_xml);
  fz_free(ctx, dict->base_uri);
  fz_free(ctx, dict);
  dict = next;
 }
}
