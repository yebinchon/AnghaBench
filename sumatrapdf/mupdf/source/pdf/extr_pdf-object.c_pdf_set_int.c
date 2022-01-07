
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int pdf_obj ;
typedef int int64_t ;
typedef int fz_context ;
struct TYPE_3__ {int i; } ;
struct TYPE_4__ {TYPE_1__ u; } ;


 TYPE_2__* NUM (int *) ;
 scalar_t__ OBJ_IS_INT (int *) ;

void pdf_set_int(fz_context *ctx, pdf_obj *obj, int64_t i)
{
 if (OBJ_IS_INT(obj))
  NUM(obj)->u.i = i;
}
