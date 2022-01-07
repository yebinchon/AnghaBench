
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char* base_uri; int * data; int name; struct TYPE_3__* next; struct TYPE_3__* parent; } ;
typedef TYPE_1__ xps_resource ;
typedef int xps_document ;
typedef int fz_xml ;
typedef int fz_context ;


 int strcmp (int ,char*) ;

__attribute__((used)) static fz_xml *
xps_lookup_resource(fz_context *ctx, xps_document *doc, xps_resource *dict, char *name, char **urip)
{
 xps_resource *head, *node;
 for (head = dict; head; head = head->parent)
 {
  for (node = head; node; node = node->next)
  {
   if (!strcmp(node->name, name))
   {
    if (urip && head->base_uri)
     *urip = head->base_uri;
    return node->data;
   }
  }
 }
 return ((void*)0);
}
