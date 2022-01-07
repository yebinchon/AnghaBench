
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * (* get_output_intent ) (int *,TYPE_1__*) ;} ;
typedef TYPE_1__ fz_document ;
typedef int fz_context ;
typedef int fz_colorspace ;


 int * stub1 (int *,TYPE_1__*) ;

fz_colorspace *
fz_document_output_intent(fz_context *ctx, fz_document *doc)
{
 if (doc && doc->get_output_intent)
  return doc->get_output_intent(ctx, doc);
 return ((void*)0);
}
