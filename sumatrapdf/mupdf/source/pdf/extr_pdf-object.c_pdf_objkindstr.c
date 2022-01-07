
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int kind; } ;
typedef TYPE_1__ pdf_obj ;




 TYPE_1__* PDF_FALSE ;


 TYPE_1__* PDF_LIMIT ;

 TYPE_1__* PDF_NULL ;


 TYPE_1__* PDF_TRUE ;

__attribute__((used)) static char *
pdf_objkindstr(pdf_obj *obj)
{
 if (obj == PDF_NULL)
  return "null";
 if (obj == PDF_TRUE || obj == PDF_FALSE)
  return "boolean";
 if (obj < PDF_LIMIT)
  return "name";
 switch (obj->kind)
 {
 case 131: return "integer";
 case 129: return "real";
 case 128: return "string";
 case 130: return "name";
 case 134: return "array";
 case 133: return "dictionary";
 case 132: return "reference";
 }
 return "<unknown>";
}
