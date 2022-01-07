
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint_t ;
typedef int uchar_t ;
typedef int nvlist_t ;


 int VERIFY0 (int ) ;
 int nvlist_lookup_byte_array (int *,char const*,int **,int *) ;

uchar_t *
fnvlist_lookup_byte_array(nvlist_t *nvl, const char *name, uint_t *n)
{
 uchar_t *rv;
 VERIFY0(nvlist_lookup_byte_array(nvl, name, &rv, n));
 return (rv);
}
