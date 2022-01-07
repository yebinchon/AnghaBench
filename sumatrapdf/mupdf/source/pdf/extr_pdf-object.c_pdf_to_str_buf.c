
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int pdf_obj ;
typedef int fz_context ;
struct TYPE_2__ {char* buf; } ;


 scalar_t__ OBJ_IS_STRING (int *) ;
 int RESOLVE (int *) ;
 TYPE_1__* STRING (int *) ;

char *pdf_to_str_buf(fz_context *ctx, pdf_obj *obj)
{
 RESOLVE(obj);
 if (OBJ_IS_STRING(obj))
  return STRING(obj)->buf;
 return "";
}
