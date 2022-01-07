
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int nvpair_t ;
typedef int nvlist_t ;
typedef int boolean_t ;


 int B_FALSE ;
 int B_TRUE ;




 int fnvlist_lookup_boolean_value (int *,char*) ;
 int fnvlist_lookup_int64 (int *,char*) ;
 int * fnvlist_lookup_nvlist (int *,char*) ;
 int * fnvlist_lookup_nvpair (int *,char*) ;
 int fnvlist_lookup_string (int *,char*) ;
 scalar_t__ fnvlist_num_pairs (int *) ;
 int fnvpair_value_boolean_value (int *) ;
 int fnvpair_value_int64 (int *) ;
 int * fnvpair_value_nvlist (int *) ;
 int fnvpair_value_string (int *) ;
 int nvlist_exists (int *,char*) ;
 int * nvlist_next_nvpair (int *,int *) ;
 char* nvpair_name (int *) ;
 scalar_t__ nvpair_type (int *) ;
 int printf (char*) ;
 int strcmp (int ,int ) ;

__attribute__((used)) static boolean_t
nvlist_equal(nvlist_t *nvla, nvlist_t *nvlb)
{
 if (fnvlist_num_pairs(nvla) != fnvlist_num_pairs(nvlb))
  return (B_FALSE);





 for (nvpair_t *pair = nvlist_next_nvpair(nvla, ((void*)0));
     pair != ((void*)0); pair = nvlist_next_nvpair(nvla, pair)) {
  char *key = nvpair_name(pair);

  if (!nvlist_exists(nvlb, key))
   return (B_FALSE);

  if (nvpair_type(pair) !=
      nvpair_type(fnvlist_lookup_nvpair(nvlb, key)))
   return (B_FALSE);

  switch (nvpair_type(pair)) {
  case 131:
   if (fnvpair_value_boolean_value(pair) !=
       fnvlist_lookup_boolean_value(nvlb, key)) {
    return (B_FALSE);
   }
   break;
  case 128:
   if (strcmp(fnvpair_value_string(pair),
       fnvlist_lookup_string(nvlb, key))) {
    return (B_FALSE);
   }
   break;
  case 130:
   if (fnvpair_value_int64(pair) !=
       fnvlist_lookup_int64(nvlb, key)) {
    return (B_FALSE);
   }
   break;
  case 129:
   if (!nvlist_equal(fnvpair_value_nvlist(pair),
       fnvlist_lookup_nvlist(nvlb, key))) {
    return (B_FALSE);
   }
   break;
  default:
   (void) printf("Unexpected type for nvlist_equal\n");
   return (B_FALSE);
  }
 }
 return (B_TRUE);
}
