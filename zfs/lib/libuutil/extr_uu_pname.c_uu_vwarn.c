
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int va_list ;


 int errno ;
 int uu_warn_internal (int ,char const*,int ) ;

void
uu_vwarn(const char *format, va_list alist)
{
 uu_warn_internal(errno, format, alist);
}
