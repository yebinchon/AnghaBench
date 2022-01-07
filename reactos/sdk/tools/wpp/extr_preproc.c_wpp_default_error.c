
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int va_list ;


 int exit (int) ;
 int generic_msg (char const*,char*,char const*,int ) ;

__attribute__((used)) static void wpp_default_error(const char *file, int line, int col, const char *near, const char *msg, va_list ap)
{
 generic_msg(msg, "Error", near, ap);
 exit(1);
}
