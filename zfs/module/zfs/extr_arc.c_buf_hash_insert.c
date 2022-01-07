
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef size_t uint64_t ;
typedef int uint32_t ;
typedef int kmutex_t ;
struct TYPE_8__ {scalar_t__ b_birth; struct TYPE_8__* b_hash_next; int b_dva; int b_spa; } ;
typedef TYPE_1__ arc_buf_hdr_t ;
struct TYPE_9__ {TYPE_1__** ht_table; } ;


 int ARCSTAT_BUMP (int ) ;
 int ARCSTAT_MAX (int ,int) ;
 int ARCSTAT_MAXSTAT (int ) ;
 int ARC_FLAG_IN_HASH_TABLE ;
 int ASSERT (int) ;
 size_t BUF_HASH_INDEX (int ,int *,scalar_t__) ;
 int * BUF_HASH_LOCK (size_t) ;
 int DVA_IS_EMPTY (int *) ;
 scalar_t__ HDR_EQUAL (int ,int *,scalar_t__,TYPE_1__*) ;
 int HDR_IN_HASH_TABLE (TYPE_1__*) ;
 int MUTEX_HELD (int *) ;
 int arc_hdr_set_flags (TYPE_1__*,int ) ;
 int arcstat_hash_chain_max ;
 int arcstat_hash_chains ;
 int arcstat_hash_collisions ;
 int arcstat_hash_elements ;
 TYPE_2__ buf_hash_table ;
 int mutex_enter (int *) ;

__attribute__((used)) static arc_buf_hdr_t *
buf_hash_insert(arc_buf_hdr_t *hdr, kmutex_t **lockp)
{
 uint64_t idx = BUF_HASH_INDEX(hdr->b_spa, &hdr->b_dva, hdr->b_birth);
 kmutex_t *hash_lock = BUF_HASH_LOCK(idx);
 arc_buf_hdr_t *fhdr;
 uint32_t i;

 ASSERT(!DVA_IS_EMPTY(&hdr->b_dva));
 ASSERT(hdr->b_birth != 0);
 ASSERT(!HDR_IN_HASH_TABLE(hdr));

 if (lockp != ((void*)0)) {
  *lockp = hash_lock;
  mutex_enter(hash_lock);
 } else {
  ASSERT(MUTEX_HELD(hash_lock));
 }

 for (fhdr = buf_hash_table.ht_table[idx], i = 0; fhdr != ((void*)0);
     fhdr = fhdr->b_hash_next, i++) {
  if (HDR_EQUAL(hdr->b_spa, &hdr->b_dva, hdr->b_birth, fhdr))
   return (fhdr);
 }

 hdr->b_hash_next = buf_hash_table.ht_table[idx];
 buf_hash_table.ht_table[idx] = hdr;
 arc_hdr_set_flags(hdr, ARC_FLAG_IN_HASH_TABLE);


 if (i > 0) {
  ARCSTAT_BUMP(arcstat_hash_collisions);
  if (i == 1)
   ARCSTAT_BUMP(arcstat_hash_chains);

  ARCSTAT_MAX(arcstat_hash_chain_max, i);
 }

 ARCSTAT_BUMP(arcstat_hash_elements);
 ARCSTAT_MAXSTAT(arcstat_hash_elements);

 return (((void*)0));
}
