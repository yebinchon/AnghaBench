
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int pdf_obj ;
typedef int fz_context ;
struct TYPE_2__ {unsigned int len; scalar_t__* buf; } ;


 int OBJ_IS_STRING (int *) ;
 int RESOLVE (int *) ;
 TYPE_1__* STRING (int *) ;

void pdf_set_str_len(fz_context *ctx, pdf_obj *obj, int newlen)
{
 RESOLVE(obj);
 if (!OBJ_IS_STRING(obj))
  return;
 if (newlen < 0 || (unsigned int)newlen > STRING(obj)->len)
  return;
 STRING(obj)->buf[newlen] = 0;
 STRING(obj)->len = newlen;
}
