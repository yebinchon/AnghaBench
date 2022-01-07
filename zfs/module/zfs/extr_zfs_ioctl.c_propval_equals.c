
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint64_t ;
typedef int nvpair_t ;
typedef int nvlist_t ;
typedef int boolean_t ;


 int B_FALSE ;
 scalar_t__ DATA_TYPE_NVLIST ;
 scalar_t__ DATA_TYPE_STRING ;
 int VERIFY (int) ;
 int ZPROP_VALUE ;
 scalar_t__ nvlist_lookup_nvpair (int *,int ,int **) ;
 scalar_t__ nvpair_type (int *) ;
 scalar_t__ nvpair_value_nvlist (int *,int **) ;
 scalar_t__ nvpair_value_string (int *,char**) ;
 scalar_t__ nvpair_value_uint64 (int *,scalar_t__*) ;
 scalar_t__ strcmp (char*,char*) ;

__attribute__((used)) static boolean_t
propval_equals(nvpair_t *p1, nvpair_t *p2)
{
 if (nvpair_type(p1) == DATA_TYPE_NVLIST) {

  nvlist_t *attrs;
  VERIFY(nvpair_value_nvlist(p1, &attrs) == 0);
  VERIFY(nvlist_lookup_nvpair(attrs, ZPROP_VALUE,
      &p1) == 0);
 }

 if (nvpair_type(p2) == DATA_TYPE_NVLIST) {
  nvlist_t *attrs;
  VERIFY(nvpair_value_nvlist(p2, &attrs) == 0);
  VERIFY(nvlist_lookup_nvpair(attrs, ZPROP_VALUE,
      &p2) == 0);
 }

 if (nvpair_type(p1) != nvpair_type(p2))
  return (B_FALSE);

 if (nvpair_type(p1) == DATA_TYPE_STRING) {
  char *valstr1, *valstr2;

  VERIFY(nvpair_value_string(p1, (char **)&valstr1) == 0);
  VERIFY(nvpair_value_string(p2, (char **)&valstr2) == 0);
  return (strcmp(valstr1, valstr2) == 0);
 } else {
  uint64_t intval1, intval2;

  VERIFY(nvpair_value_uint64(p1, &intval1) == 0);
  VERIFY(nvpair_value_uint64(p2, &intval2) == 0);
  return (intval1 == intval2);
 }
}
