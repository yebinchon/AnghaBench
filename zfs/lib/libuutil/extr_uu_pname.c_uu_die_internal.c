
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int va_list ;


 int abort () ;
 int errno ;
 int exit (int) ;
 char* getenv (char*) ;
 int issetugid () ;
 int uu_warn_internal (int ,char const*,int ) ;

__attribute__((used)) static void
uu_die_internal(int status, const char *format, va_list alist)
{
 uu_warn_internal(errno, format, alist);
 exit(status);
}
