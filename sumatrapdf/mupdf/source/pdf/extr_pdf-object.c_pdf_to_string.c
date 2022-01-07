
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int pdf_obj ;
typedef int fz_context ;
struct TYPE_2__ {size_t len; char const* buf; } ;


 scalar_t__ OBJ_IS_STRING (int *) ;
 int RESOLVE (int *) ;
 TYPE_1__* STRING (int *) ;

const char *pdf_to_string(fz_context *ctx, pdf_obj *obj, size_t *sizep)
{
 RESOLVE(obj);
 if (OBJ_IS_STRING(obj))
 {
  if (sizep)
   *sizep = STRING(obj)->len;
  return STRING(obj)->buf;
 }
 if (sizep)
  *sizep = 0;
 return "";
}
