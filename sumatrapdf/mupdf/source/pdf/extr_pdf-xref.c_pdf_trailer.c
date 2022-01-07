
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * trailer; } ;
typedef TYPE_1__ pdf_xref ;
typedef int pdf_obj ;
struct TYPE_5__ {TYPE_1__* xref_sections; } ;
typedef TYPE_2__ pdf_document ;
typedef int fz_context ;



pdf_obj *pdf_trailer(fz_context *ctx, pdf_document *doc)
{

 pdf_xref *xref = &doc->xref_sections[0];

 return xref ? xref->trailer : ((void*)0);
}
