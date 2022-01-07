
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int js_State ;


 int fputc (char,int ) ;
 int fputs (char const*,int ) ;
 int stderr ;

__attribute__((used)) static void js_defaultreport(js_State *J, const char *message)
{
 fputs(message, stderr);
 fputc('\n', stderr);
}
