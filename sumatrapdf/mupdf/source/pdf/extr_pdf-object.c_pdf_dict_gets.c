
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int pdf_obj ;
typedef int fz_context ;
struct TYPE_4__ {TYPE_1__* items; } ;
struct TYPE_3__ {int * v; } ;


 TYPE_2__* DICT (int *) ;
 int OBJ_IS_DICT (int *) ;
 int RESOLVE (int *) ;
 int pdf_dict_finds (int *,int *,char const*) ;

pdf_obj *
pdf_dict_gets(fz_context *ctx, pdf_obj *obj, const char *key)
{
 int i;

 RESOLVE(obj);
 if (!OBJ_IS_DICT(obj))
  return ((void*)0);
 if (!key)
  return ((void*)0);

 i = pdf_dict_finds(ctx, obj, key);
 if (i >= 0)
  return DICT(obj)->items[i].v;
 return ((void*)0);
}
