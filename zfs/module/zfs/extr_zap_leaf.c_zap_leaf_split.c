
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int zap_leaf_t ;
struct zap_leaf_entry {scalar_t__ le_type; unsigned long long le_hash; } ;
typedef scalar_t__ boolean_t ;
struct TYPE_3__ {int lh_prefix_len; int lh_prefix; int lh_flags; } ;
struct TYPE_4__ {TYPE_1__ l_hdr; int l_hash; } ;


 int CHAIN_END ;
 scalar_t__ ZAP_CHUNK_ENTRY ;
 struct zap_leaf_entry* ZAP_LEAF_ENTRY (int *,int) ;
 int ZAP_LEAF_HASH_NUMENTRIES (int *) ;
 int ZAP_LEAF_NUMCHUNKS (int *) ;
 int ZLF_ENTRIES_CDSORTED ;
 TYPE_2__* zap_leaf_phys (int *) ;
 int zap_leaf_rehash_entry (int *,int) ;
 int zap_leaf_transfer_entry (int *,int,int *) ;
 int zap_memset (int ,int ,int) ;

void
zap_leaf_split(zap_leaf_t *l, zap_leaf_t *nl, boolean_t sort)
{
 int bit = 64 - 1 - zap_leaf_phys(l)->l_hdr.lh_prefix_len;


 zap_leaf_phys(l)->l_hdr.lh_prefix <<= 1;
 zap_leaf_phys(l)->l_hdr.lh_prefix_len++;
 zap_leaf_phys(nl)->l_hdr.lh_prefix =
     zap_leaf_phys(l)->l_hdr.lh_prefix | 1;
 zap_leaf_phys(nl)->l_hdr.lh_prefix_len =
     zap_leaf_phys(l)->l_hdr.lh_prefix_len;


 zap_memset(zap_leaf_phys(l)->l_hash, CHAIN_END,
     2*ZAP_LEAF_HASH_NUMENTRIES(l));

 if (sort)
  zap_leaf_phys(l)->l_hdr.lh_flags |= ZLF_ENTRIES_CDSORTED;
 for (int i = 0; i < ZAP_LEAF_NUMCHUNKS(l); i++) {
  struct zap_leaf_entry *le = ZAP_LEAF_ENTRY(l, i);
  if (le->le_type != ZAP_CHUNK_ENTRY)
   continue;

  if (le->le_hash & (1ULL << bit))
   zap_leaf_transfer_entry(l, i, nl);
  else
   (void) zap_leaf_rehash_entry(l, i);
 }
}
