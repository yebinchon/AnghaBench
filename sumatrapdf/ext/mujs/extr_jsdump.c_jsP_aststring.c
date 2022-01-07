
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum js_AstType { ____Placeholder_js_AstType } js_AstType ;


 char const** astname ;
 int nelem (char const**) ;

const char *jsP_aststring(enum js_AstType type)
{
 if (type < nelem(astname)-1)
  return astname[type];
 return "<unknown>";
}
