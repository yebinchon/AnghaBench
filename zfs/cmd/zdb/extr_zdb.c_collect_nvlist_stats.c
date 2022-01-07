
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {size_t zns_leaf_total; size_t zns_leaf_largest; int zns_leaf_count; int zns_boolean; int zns_uint64; int zns_string; int zns_list_count; } ;
typedef TYPE_1__ zdb_nvl_stats_t ;
typedef size_t uint_t ;
typedef int nvpair_t ;
typedef int nvlist_t ;







 int NV_ENCODE_XDR ;
 int fnvlist_add_boolean (int ,char*) ;
 int fnvlist_add_string (int ,char*,int ) ;
 int fnvlist_add_uint64 (int ,char*,int ) ;
 int fnvpair_value_string (int *) ;
 int fnvpair_value_uint64 (int *) ;
 int * nvlist_next_nvpair (int *,int *) ;
 int nvlist_size (int *,size_t*,int ) ;
 char* nvpair_name (int *) ;
 int nvpair_type (int *) ;
 int nvpair_value_nvlist (int *,int **) ;
 int nvpair_value_nvlist_array (int *,int ***,size_t*) ;
 int printf (char*,int) ;
 int strcmp (char*,char*) ;

__attribute__((used)) static void
collect_nvlist_stats(nvlist_t *nvl, zdb_nvl_stats_t *stats)
{
 nvlist_t *list, **array;
 nvpair_t *nvp = ((void*)0);
 char *name;
 uint_t i, items;

 stats->zns_list_count++;

 while ((nvp = nvlist_next_nvpair(nvl, nvp)) != ((void*)0)) {
  name = nvpair_name(nvp);

  switch (nvpair_type(nvp)) {
  case 129:
   fnvlist_add_string(stats->zns_string, name,
       fnvpair_value_string(nvp));
   break;
  case 128:
   fnvlist_add_uint64(stats->zns_uint64, name,
       fnvpair_value_uint64(nvp));
   break;
  case 132:
   fnvlist_add_boolean(stats->zns_boolean, name);
   break;
  case 131:
   if (nvpair_value_nvlist(nvp, &list) == 0)
    collect_nvlist_stats(list, stats);
   break;
  case 130:
   if (nvpair_value_nvlist_array(nvp, &array, &items) != 0)
    break;

   for (i = 0; i < items; i++) {
    collect_nvlist_stats(array[i], stats);


    if (strcmp(name, "children") == 0) {
     size_t size;

     (void) nvlist_size(array[i], &size,
         NV_ENCODE_XDR);
     stats->zns_leaf_total += size;
     if (size > stats->zns_leaf_largest)
      stats->zns_leaf_largest = size;
     stats->zns_leaf_count++;
    }
   }
   break;
  default:
   (void) printf("skip type %d!\n", (int)nvpair_type(nvp));
  }
 }
}
