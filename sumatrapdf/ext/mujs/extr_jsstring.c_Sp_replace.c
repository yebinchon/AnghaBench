
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int js_State ;


 int Sp_replace_regexp (int *) ;
 int Sp_replace_string (int *) ;
 scalar_t__ js_isregexp (int *,int) ;

__attribute__((used)) static void Sp_replace(js_State *J)
{
 if (js_isregexp(J, 1))
  Sp_replace_regexp(J);
 else
  Sp_replace_string(J);
}
