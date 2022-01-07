
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int js_State ;


 int Sp_split_regexp (int *) ;
 int Sp_split_string (int *) ;
 int js_copy (int *,int ) ;
 scalar_t__ js_isregexp (int *,int) ;
 scalar_t__ js_isundefined (int *,int) ;
 int js_newarray (int *) ;
 int js_setindex (int *,int,int ) ;

__attribute__((used)) static void Sp_split(js_State *J)
{
 if (js_isundefined(J, 1)) {
  js_newarray(J);
  js_copy(J, 0);
  js_setindex(J, -2, 0);
 } else if (js_isregexp(J, 1)) {
  Sp_split_regexp(J);
 } else {
  Sp_split_string(J);
 }
}
