
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int xps_resource ;
typedef int xps_document ;
typedef int fz_xml ;
typedef int fz_context ;


 int * xps_parse_resource_reference (int *,int *,int *,char*,char**) ;

void
xps_resolve_resource_reference(fz_context *ctx, xps_document *doc, xps_resource *dict,
  char **attp, fz_xml **tagp, char **urip)
{
 if (*attp)
 {
  fz_xml *rsrc = xps_parse_resource_reference(ctx, doc, dict, *attp, urip);
  if (rsrc)
  {
   *attp = ((void*)0);
   *tagp = rsrc;
  }
 }
}
