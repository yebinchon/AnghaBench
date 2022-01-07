
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int va_list ;


 int uu_die_internal (int,char const*,int ) ;

void
uu_vxdie(int status, const char *format, va_list alist)
{
 uu_die_internal(status, format, alist);
}
