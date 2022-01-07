
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t uint_t ;
typedef int uint64_t ;
typedef int nvlist_t ;
typedef scalar_t__ diskaddr_t ;


 scalar_t__ MAXOFFSET_T ;
 int ZPOOL_CONFIG_CHILDREN ;
 int ZPOOL_CONFIG_WHOLE_DISK ;
 scalar_t__ nvlist_lookup_nvlist_array (int *,int ,int ***,size_t*) ;
 scalar_t__ nvlist_lookup_uint64 (int *,int ,int *) ;
 scalar_t__ read_efi_label (int *,scalar_t__*) ;

__attribute__((used)) static diskaddr_t
find_start_block(nvlist_t *config)
{
 nvlist_t **child;
 uint_t c, children;
 diskaddr_t sb = MAXOFFSET_T;
 uint64_t wholedisk;

 if (nvlist_lookup_nvlist_array(config,
     ZPOOL_CONFIG_CHILDREN, &child, &children) != 0) {
  if (nvlist_lookup_uint64(config,
      ZPOOL_CONFIG_WHOLE_DISK,
      &wholedisk) != 0 || !wholedisk) {
   return (MAXOFFSET_T);
  }
  if (read_efi_label(config, &sb) < 0)
   sb = MAXOFFSET_T;
  return (sb);
 }

 for (c = 0; c < children; c++) {
  sb = find_start_block(child[c]);
  if (sb != MAXOFFSET_T) {
   return (sb);
  }
 }
 return (MAXOFFSET_T);
}
