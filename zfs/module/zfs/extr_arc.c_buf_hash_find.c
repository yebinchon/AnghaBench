
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef size_t uint64_t ;
typedef int kmutex_t ;
typedef int dva_t ;
typedef int blkptr_t ;
struct TYPE_5__ {struct TYPE_5__* b_hash_next; } ;
typedef TYPE_1__ arc_buf_hdr_t ;
struct TYPE_6__ {TYPE_1__** ht_table; } ;


 int * BP_IDENTITY (int const*) ;
 size_t BP_PHYSICAL_BIRTH (int const*) ;
 size_t BUF_HASH_INDEX (size_t,int const*,size_t) ;
 int * BUF_HASH_LOCK (size_t) ;
 scalar_t__ HDR_EQUAL (size_t,int const*,size_t,TYPE_1__*) ;
 TYPE_2__ buf_hash_table ;
 int mutex_enter (int *) ;
 int mutex_exit (int *) ;

__attribute__((used)) static arc_buf_hdr_t *
buf_hash_find(uint64_t spa, const blkptr_t *bp, kmutex_t **lockp)
{
 const dva_t *dva = BP_IDENTITY(bp);
 uint64_t birth = BP_PHYSICAL_BIRTH(bp);
 uint64_t idx = BUF_HASH_INDEX(spa, dva, birth);
 kmutex_t *hash_lock = BUF_HASH_LOCK(idx);
 arc_buf_hdr_t *hdr;

 mutex_enter(hash_lock);
 for (hdr = buf_hash_table.ht_table[idx]; hdr != ((void*)0);
     hdr = hdr->b_hash_next) {
  if (HDR_EQUAL(spa, dva, birth, hdr)) {
   *lockp = hash_lock;
   return (hdr);
  }
 }
 mutex_exit(hash_lock);
 *lockp = ((void*)0);
 return (((void*)0));
}
