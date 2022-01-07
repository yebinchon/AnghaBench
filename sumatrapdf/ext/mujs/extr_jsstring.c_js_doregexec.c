
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int js_State ;
typedef int Resub ;
typedef int Reprog ;


 int js_error (int *,char*) ;
 int js_regexec (int *,char const*,int *,int) ;

__attribute__((used)) static int js_doregexec(js_State *J, Reprog *prog, const char *string, Resub *sub, int eflags)
{
 int result = js_regexec(prog, string, sub, eflags);
 if (result < 0)
  js_error(J, "regexec failed");
 return result;
}
