
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_8__ ;
typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_10__ {int kind; } ;
typedef TYPE_1__ pdf_obj ;
typedef int fz_context ;
struct TYPE_13__ {int parent_num; } ;
struct TYPE_12__ {int parent_num; } ;
struct TYPE_11__ {int num; } ;


 TYPE_8__* ARRAY (TYPE_1__*) ;
 TYPE_6__* DICT (TYPE_1__*) ;



 TYPE_1__* PDF_LIMIT ;
 TYPE_3__* REF (TYPE_1__*) ;

int pdf_obj_parent_num(fz_context *ctx, pdf_obj *obj)
{
 if (obj < PDF_LIMIT)
  return 0;

 switch (obj->kind)
 {
 case 128:
  return REF(obj)->num;
 case 130:
  return ARRAY(obj)->parent_num;
 case 129:
  return DICT(obj)->parent_num;
 default:
  return 0;
 }
}
