
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int utsname_t ;


 int hw_utsname ;

utsname_t *
utsname(void)
{
 return (&hw_utsname);
}
