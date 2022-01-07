
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int xps_document ;
typedef int fz_xml ;
struct TYPE_7__ {struct TYPE_7__* next; struct TYPE_7__* down; int page; void* uri; void* title; } ;
typedef TYPE_1__ fz_outline ;
typedef int fz_document ;
typedef int fz_context ;
struct TYPE_8__ {int page; } ;


 void* Memento_label (int ,char*) ;
 int atoi (char*) ;
 TYPE_1__* fz_new_outline (int *) ;
 int fz_strdup (int *,char*) ;
 char* fz_xml_att (int *,char*) ;
 int * fz_xml_down (int *) ;
 scalar_t__ fz_xml_is_tag (int *,char*) ;
 int * fz_xml_next (int *) ;
 TYPE_1__* xps_lookup_last_outline_at_level (int *,int *,TYPE_1__*,int,int) ;
 TYPE_3__ xps_lookup_link_target (int *,int *,char*,int *,int *) ;

__attribute__((used)) static fz_outline *
xps_parse_document_outline(fz_context *ctx, xps_document *doc, fz_xml *root)
{
 fz_xml *node;
 fz_outline *head = ((void*)0), *entry, *tail;
 int last_level = 1, this_level;
 for (node = fz_xml_down(root); node; node = fz_xml_next(node))
 {
  if (fz_xml_is_tag(node, "OutlineEntry"))
  {
   char *level = fz_xml_att(node, "OutlineLevel");
   char *target = fz_xml_att(node, "OutlineTarget");
   char *description = fz_xml_att(node, "Description");
   if (!target || !description)
    continue;

   entry = fz_new_outline(ctx);
   entry->title = Memento_label(fz_strdup(ctx, description), "outline_title");
   entry->uri = Memento_label(fz_strdup(ctx, target), "outline_uri");
   entry->page = xps_lookup_link_target(ctx, (fz_document*)doc, target, ((void*)0), ((void*)0)).page;
   entry->down = ((void*)0);
   entry->next = ((void*)0);

   this_level = level ? atoi(level) : 1;

   if (!head)
   {
    head = entry;
   }
   else
   {
    tail = xps_lookup_last_outline_at_level(ctx, doc, head, 1, this_level);
    if (this_level > last_level)
     tail->down = entry;
    else
     tail->next = entry;
   }

   last_level = this_level;
  }
 }
 return head;
}
