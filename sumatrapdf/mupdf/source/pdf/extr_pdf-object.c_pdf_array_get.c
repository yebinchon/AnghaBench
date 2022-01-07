
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int pdf_obj ;
typedef int fz_context ;
struct TYPE_2__ {int len; int ** items; } ;


 TYPE_1__* ARRAY (int *) ;
 int OBJ_IS_ARRAY (int *) ;
 int RESOLVE (int *) ;

pdf_obj *
pdf_array_get(fz_context *ctx, pdf_obj *obj, int i)
{
 RESOLVE(obj);
 if (!OBJ_IS_ARRAY(obj))
  return ((void*)0);
 if (i < 0 || i >= ARRAY(obj)->len)
  return ((void*)0);
 return ARRAY(obj)->items[i];
}
