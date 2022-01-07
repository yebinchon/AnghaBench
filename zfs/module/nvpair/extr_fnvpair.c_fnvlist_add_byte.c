
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uchar_t ;
typedef int nvlist_t ;


 int VERIFY0 (int ) ;
 int nvlist_add_byte (int *,char const*,int ) ;

void
fnvlist_add_byte(nvlist_t *nvl, const char *name, uchar_t val)
{
 VERIFY0(nvlist_add_byte(nvl, name, val));
}
