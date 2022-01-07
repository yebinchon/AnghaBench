
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {void* outline; } ;
typedef TYPE_1__ xps_fixdoc ;
struct TYPE_10__ {int base_uri; void* start_part; } ;
typedef TYPE_2__ xps_document ;
typedef int fz_xml ;
typedef int fz_context ;


 int REL_DOC_STRUCTURE ;
 int REL_DOC_STRUCTURE_OXPS ;
 int REL_START_PART ;
 int REL_START_PART_OXPS ;
 int atoi (char*) ;
 int fz_free (int *,void*) ;
 void* fz_strdup (int *,char*) ;
 int fz_warn (int *,char*,char*) ;
 char* fz_xml_att (int *,char*) ;
 int * fz_xml_down (int *) ;
 scalar_t__ fz_xml_is_tag (int *,char*) ;
 int * fz_xml_next (int *) ;
 int strcmp (char*,int ) ;
 int xps_add_fixed_document (int *,TYPE_2__*,char*) ;
 int xps_add_fixed_page (int *,TYPE_2__*,char*,int,int) ;
 int xps_add_link_target (int *,TYPE_2__*,char*) ;
 int xps_resolve_url (int *,TYPE_2__*,char*,int ,char*,int) ;

__attribute__((used)) static void
xps_parse_metadata_imp(fz_context *ctx, xps_document *doc, fz_xml *item, xps_fixdoc *fixdoc)
{
 while (item)
 {
  if (fz_xml_is_tag(item, "Relationship"))
  {
   char *target = fz_xml_att(item, "Target");
   char *type = fz_xml_att(item, "Type");
   if (target && type)
   {
    char tgtbuf[1024];
    xps_resolve_url(ctx, doc, tgtbuf, doc->base_uri, target, sizeof tgtbuf);
    if (!strcmp(type, REL_START_PART) || !strcmp(type, REL_START_PART_OXPS))
    {
     fz_free(ctx, doc->start_part);
     doc->start_part = fz_strdup(ctx, tgtbuf);
    }
    if ((!strcmp(type, REL_DOC_STRUCTURE) || !strcmp(type, REL_DOC_STRUCTURE_OXPS)) && fixdoc)
     fixdoc->outline = fz_strdup(ctx, tgtbuf);
    if (!fz_xml_att(item, "Id"))
     fz_warn(ctx, "missing relationship id for %s", target);
   }
  }

  if (fz_xml_is_tag(item, "DocumentReference"))
  {
   char *source = fz_xml_att(item, "Source");
   if (source)
   {
    char srcbuf[1024];
    xps_resolve_url(ctx, doc, srcbuf, doc->base_uri, source, sizeof srcbuf);
    xps_add_fixed_document(ctx, doc, srcbuf);
   }
  }

  if (fz_xml_is_tag(item, "PageContent"))
  {
   char *source = fz_xml_att(item, "Source");
   char *width_att = fz_xml_att(item, "Width");
   char *height_att = fz_xml_att(item, "Height");
   int width = width_att ? atoi(width_att) : 0;
   int height = height_att ? atoi(height_att) : 0;
   if (source)
   {
    char srcbuf[1024];
    xps_resolve_url(ctx, doc, srcbuf, doc->base_uri, source, sizeof srcbuf);
    xps_add_fixed_page(ctx, doc, srcbuf, width, height);
   }
  }

  if (fz_xml_is_tag(item, "LinkTarget"))
  {
   char *name = fz_xml_att(item, "Name");
   if (name)
    xps_add_link_target(ctx, doc, name);
  }

  xps_parse_metadata_imp(ctx, doc, fz_xml_down(item), fixdoc);

  item = fz_xml_next(item);
 }
}
