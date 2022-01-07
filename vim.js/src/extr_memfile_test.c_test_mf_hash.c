
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct TYPE_12__ {int mht_count; int mht_mask; scalar_t__ mht_buckets; scalar_t__ mht_small_buckets; } ;
typedef TYPE_1__ mf_hashtab_T ;
struct TYPE_13__ {scalar_t__ mhi_key; } ;
typedef TYPE_2__ mf_hashitem_T ;
typedef int long_u ;
typedef scalar_t__ blocknr_T ;


 int FALSE ;
 int MHT_GROWTH_FACTOR ;
 int MHT_INIT_SIZE ;
 int MHT_LOG_LOAD_FACTOR ;
 int TEST_COUNT ;
 int assert (int) ;
 scalar_t__ index_to_key (int) ;
 scalar_t__ lalloc_clear (int,int ) ;
 int mf_hash_add_item (TYPE_1__*,TYPE_2__*) ;
 TYPE_2__* mf_hash_find (TYPE_1__*,scalar_t__) ;
 int mf_hash_free_all (TYPE_1__*) ;
 int mf_hash_init (TYPE_1__*) ;
 int mf_hash_rem_item (TYPE_1__*,TYPE_2__*) ;
 int vim_free (TYPE_2__*) ;

__attribute__((used)) static void
test_mf_hash()
{
    mf_hashtab_T ht;
    mf_hashitem_T *item;
    blocknr_T key;
    long_u i;
    long_u num_buckets;

    mf_hash_init(&ht);


    for (i = 0; i < TEST_COUNT; i++)
    {
 assert(ht.mht_count == i);


 num_buckets = ht.mht_mask + 1;
 assert(num_buckets > 0 && (num_buckets & (num_buckets - 1)) == 0);


 assert(ht.mht_count <= (num_buckets << MHT_LOG_LOAD_FACTOR));

 if (i < (MHT_INIT_SIZE << MHT_LOG_LOAD_FACTOR))
 {

     assert(num_buckets == MHT_INIT_SIZE);
     assert(ht.mht_buckets == ht.mht_small_buckets);
 }
 else
 {
     assert(num_buckets > MHT_INIT_SIZE);
     assert(ht.mht_buckets != ht.mht_small_buckets);
 }

 key = index_to_key(i);
 assert(mf_hash_find(&ht, key) == ((void*)0));


 item = (mf_hashitem_T *)lalloc_clear(sizeof(mf_hashtab_T), FALSE);
 assert(item != ((void*)0));
 item->mhi_key = key;
 mf_hash_add_item(&ht, item);

 assert(mf_hash_find(&ht, key) == item);

 if (ht.mht_mask + 1 != num_buckets)
 {

     assert(ht.mht_mask + 1 == num_buckets * MHT_GROWTH_FACTOR);
     assert(i + 1 == (num_buckets << MHT_LOG_LOAD_FACTOR));
 }
    }


    for (i = 0; i < TEST_COUNT; i++)
    {
 key = index_to_key(i);
 item = mf_hash_find(&ht, key);
 assert(item != ((void*)0));
 assert(item->mhi_key == key);
    }


    for (i = 0; i < TEST_COUNT; i++)
    {
 if (i % 100 < 70)
 {
     key = index_to_key(i);
     item = mf_hash_find(&ht, key);
     assert(item != ((void*)0));
     assert(item->mhi_key == key);

     mf_hash_rem_item(&ht, item);
     assert(mf_hash_find(&ht, key) == ((void*)0));

     mf_hash_add_item(&ht, item);
     assert(mf_hash_find(&ht, key) == item);

     mf_hash_rem_item(&ht, item);
     assert(mf_hash_find(&ht, key) == ((void*)0));

     vim_free(item);
 }
    }


    for (i = 0; i < TEST_COUNT; i++)
    {
 key = index_to_key(i);
 item = mf_hash_find(&ht, key);

 if (i % 100 < 70)
 {
     assert(item == ((void*)0));
 }
 else
 {
     assert(item != ((void*)0));
     assert(item->mhi_key == key);
 }
    }


    mf_hash_free_all(&ht);
}
