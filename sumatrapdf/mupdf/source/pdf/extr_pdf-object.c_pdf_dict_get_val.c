
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int pdf_obj ;
typedef int fz_context ;
struct TYPE_4__ {int len; TYPE_1__* items; } ;
struct TYPE_3__ {int * v; } ;


 TYPE_2__* DICT (int *) ;
 int OBJ_IS_DICT (int *) ;
 int RESOLVE (int *) ;

pdf_obj *
pdf_dict_get_val(fz_context *ctx, pdf_obj *obj, int i)
{
 RESOLVE(obj);
 if (!OBJ_IS_DICT(obj))
  return ((void*)0);
 if (i < 0 || i >= DICT(obj)->len)
  return ((void*)0);
 return DICT(obj)->items[i].v;
}
