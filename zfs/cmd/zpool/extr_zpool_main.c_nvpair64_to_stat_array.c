
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat_array {int count; int __data; int * data; } ;
typedef int nvpair_t ;
typedef int nvlist_t ;




 int EINVAL ;
 scalar_t__ nvlist_lookup_nvpair (int *,char const*,int **) ;
 int nvpair_type (int *) ;
 int nvpair_value_uint64 (int *,int *) ;
 int nvpair_value_uint64_array (int *,int **,int*) ;
 int verify (int) ;

__attribute__((used)) static int
nvpair64_to_stat_array(nvlist_t *nvl, const char *name,
    struct stat_array *nva)
{
 nvpair_t *tmp;
 int ret;

 verify(nvlist_lookup_nvpair(nvl, name, &tmp) == 0);
 switch (nvpair_type(tmp)) {
 case 128:
  ret = nvpair_value_uint64_array(tmp, &nva->data, &nva->count);
  break;
 case 129:
  ret = nvpair_value_uint64(tmp, &nva->__data);
  nva->data = &nva->__data;
  nva->count = 1;
  break;
 default:

  ret = EINVAL;
  break;
 }

 return (ret);
}
