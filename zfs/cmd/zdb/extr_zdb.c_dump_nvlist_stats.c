
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int zns_list_count; size_t zns_leaf_count; size_t zns_leaf_total; int * zns_boolean; int * zns_uint64; int * zns_string; scalar_t__ zns_leaf_largest; int member_0; } ;
typedef TYPE_1__ zdb_nvl_stats_t ;
typedef int nvlist_t ;


 int NV_ENCODE_XDR ;
 int VERIFY0 (int ) ;
 int collect_nvlist_stats (int *,TYPE_1__*) ;
 int* dump_opt ;
 scalar_t__ fnvlist_num_pairs (int *) ;
 int nvlist_alloc (int **,int ,int ) ;
 int nvlist_free (int *) ;
 int nvlist_size (int *,size_t*,int ) ;
 int printf (char*,...) ;

__attribute__((used)) static void
dump_nvlist_stats(nvlist_t *nvl, size_t cap)
{
 zdb_nvl_stats_t stats = { 0 };
 size_t size, sum = 0, total;
 size_t noise;


 VERIFY0(nvlist_alloc(&stats.zns_string, 0, 0));
 VERIFY0(nvlist_alloc(&stats.zns_uint64, 0, 0));
 VERIFY0(nvlist_alloc(&stats.zns_boolean, 0, 0));
 VERIFY0(nvlist_size(stats.zns_boolean, &noise, NV_ENCODE_XDR));

 (void) printf("\n\nZFS Label NVList Config Stats:\n");

 VERIFY0(nvlist_size(nvl, &total, NV_ENCODE_XDR));
 (void) printf("  %d bytes used, %d bytes free (using %4.1f%%)\n\n",
     (int)total, (int)(cap - total), 100.0 * total / cap);

 collect_nvlist_stats(nvl, &stats);

 VERIFY0(nvlist_size(stats.zns_uint64, &size, NV_ENCODE_XDR));
 size -= noise;
 sum += size;
 (void) printf("%12s %4d %6d bytes (%5.2f%%)\n", "integers:",
     (int)fnvlist_num_pairs(stats.zns_uint64),
     (int)size, 100.0 * size / total);

 VERIFY0(nvlist_size(stats.zns_string, &size, NV_ENCODE_XDR));
 size -= noise;
 sum += size;
 (void) printf("%12s %4d %6d bytes (%5.2f%%)\n", "strings:",
     (int)fnvlist_num_pairs(stats.zns_string),
     (int)size, 100.0 * size / total);

 VERIFY0(nvlist_size(stats.zns_boolean, &size, NV_ENCODE_XDR));
 size -= noise;
 sum += size;
 (void) printf("%12s %4d %6d bytes (%5.2f%%)\n", "booleans:",
     (int)fnvlist_num_pairs(stats.zns_boolean),
     (int)size, 100.0 * size / total);

 size = total - sum;
 (void) printf("%12s %4d %6d bytes (%5.2f%%)\n\n", "nvlists:",
     stats.zns_list_count, (int)size, 100.0 * size / total);

 if (stats.zns_leaf_count > 0) {
  size_t average = stats.zns_leaf_total / stats.zns_leaf_count;

  (void) printf("%12s %4d %6d bytes average\n", "leaf vdevs:",
      stats.zns_leaf_count, (int)average);
  (void) printf("%24d bytes largest\n",
      (int)stats.zns_leaf_largest);

  if (dump_opt['l'] >= 3 && average > 0)
   (void) printf("  space for %d additional leaf vdevs\n",
       (int)((cap - total) / average));
 }
 (void) printf("\n");

 nvlist_free(stats.zns_string);
 nvlist_free(stats.zns_uint64);
 nvlist_free(stats.zns_boolean);
}
