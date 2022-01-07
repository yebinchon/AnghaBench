
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ has_old_style_xrefs; scalar_t__ has_xref_streams; scalar_t__ redacted; scalar_t__ repair_attempted; } ;
typedef TYPE_1__ pdf_document ;
typedef int fz_context ;



int pdf_can_be_saved_incrementally(fz_context *ctx, pdf_document *doc)
{
 if (doc->repair_attempted)
  return 0;
 if (doc->redacted)
  return 0;
 if (doc->has_xref_streams && doc->has_old_style_xrefs)
  return 0;
 return 1;
}
