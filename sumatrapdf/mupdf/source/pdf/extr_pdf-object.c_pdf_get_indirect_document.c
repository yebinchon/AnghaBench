
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int pdf_obj ;
typedef int pdf_document ;
typedef int fz_context ;
struct TYPE_2__ {int * doc; } ;


 scalar_t__ OBJ_IS_INDIRECT (int *) ;
 TYPE_1__* REF (int *) ;

pdf_document *pdf_get_indirect_document(fz_context *ctx, pdf_obj *obj)
{
 if (OBJ_IS_INDIRECT(obj))
  return REF(obj)->doc;
 return ((void*)0);
}
