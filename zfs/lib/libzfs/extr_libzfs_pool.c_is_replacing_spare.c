
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint_t ;
typedef int nvlist_t ;
typedef scalar_t__ boolean_t ;


 scalar_t__ B_FALSE ;
 scalar_t__ B_TRUE ;
 int VDEV_TYPE_SPARE ;
 int ZPOOL_CONFIG_CHILDREN ;
 int ZPOOL_CONFIG_TYPE ;
 scalar_t__ nvlist_lookup_nvlist_array (int *,int ,int ***,int*) ;
 scalar_t__ nvlist_lookup_string (int *,int ,char**) ;
 scalar_t__ strcmp (char*,int ) ;
 int verify (int) ;

__attribute__((used)) static boolean_t
is_replacing_spare(nvlist_t *search, nvlist_t *tgt, int which)
{
 nvlist_t **child;
 uint_t c, children;
 char *type;

 if (nvlist_lookup_nvlist_array(search, ZPOOL_CONFIG_CHILDREN, &child,
     &children) == 0) {
  verify(nvlist_lookup_string(search, ZPOOL_CONFIG_TYPE,
      &type) == 0);

  if (strcmp(type, VDEV_TYPE_SPARE) == 0 &&
      children == 2 && child[which] == tgt)
   return (B_TRUE);

  for (c = 0; c < children; c++)
   if (is_replacing_spare(child[c], tgt, which))
    return (B_TRUE);
 }

 return (B_FALSE);
}
