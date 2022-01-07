
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int nvpair_t ;
typedef int nvlist_t ;


 scalar_t__ nvlist_lookup_nvpair (int *,char const*,int **) ;
 int * nvlist_next_nvpair (int *,int *) ;
 int nvlist_remove_nvpair (int *,int *) ;
 char* nvpair_name (int *) ;
 int propval_equals (int *,int *) ;

__attribute__((used)) static void
props_reduce(nvlist_t *props, nvlist_t *origprops)
{
 nvpair_t *pair, *next_pair;

 if (origprops == ((void*)0))
  return;

 pair = nvlist_next_nvpair(props, ((void*)0));
 while (pair != ((void*)0)) {
  const char *propname = nvpair_name(pair);
  nvpair_t *match;

  next_pair = nvlist_next_nvpair(props, pair);

  if ((nvlist_lookup_nvpair(origprops, propname,
      &match) != 0) || !propval_equals(pair, match))
   goto next;


  (void) nvlist_remove_nvpair(origprops, match);

  (void) nvlist_remove_nvpair(props, pair);
next:
  pair = next_pair;
 }
}
