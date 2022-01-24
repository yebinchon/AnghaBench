#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
struct TYPE_12__ {int mht_count; int mht_mask; scalar_t__ mht_buckets; scalar_t__ mht_small_buckets; } ;
typedef  TYPE_1__ mf_hashtab_T ;
struct TYPE_13__ {scalar_t__ mhi_key; } ;
typedef  TYPE_2__ mf_hashitem_T ;
typedef  int long_u ;
typedef  scalar_t__ blocknr_T ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int MHT_GROWTH_FACTOR ; 
 int MHT_INIT_SIZE ; 
 int MHT_LOG_LOAD_FACTOR ; 
 int TEST_COUNT ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (int) ; 
 scalar_t__ FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,TYPE_2__*) ; 
 TYPE_2__* FUNC4 (TYPE_1__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*) ; 

__attribute__((used)) static void
FUNC9()
{
    mf_hashtab_T   ht;
    mf_hashitem_T  *item;
    blocknr_T      key;
    long_u	   i;
    long_u	   num_buckets;

    FUNC6(&ht);

    /* insert some items and check invariants */
    for (i = 0; i < TEST_COUNT; i++)
    {
	FUNC0(ht.mht_count == i);

	/* check that number of buckets is a power of 2 */
	num_buckets = ht.mht_mask + 1;
	FUNC0(num_buckets > 0 && (num_buckets & (num_buckets - 1)) == 0);

	/* check load factor */
	FUNC0(ht.mht_count <= (num_buckets << MHT_LOG_LOAD_FACTOR));

	if (i < (MHT_INIT_SIZE << MHT_LOG_LOAD_FACTOR))
	{
	    /* first expansion shouldn't have occurred yet */
	    FUNC0(num_buckets == MHT_INIT_SIZE);
	    FUNC0(ht.mht_buckets == ht.mht_small_buckets);
	}
	else
	{
	    FUNC0(num_buckets > MHT_INIT_SIZE);
	    FUNC0(ht.mht_buckets != ht.mht_small_buckets);
	}

	key = FUNC1(i);
	FUNC0(FUNC4(&ht, key) == NULL);

	/* allocate and add new item */
	item = (mf_hashitem_T *)FUNC2(sizeof(mf_hashtab_T), FALSE);
	FUNC0(item != NULL);
	item->mhi_key = key;
	FUNC3(&ht, item);

	FUNC0(FUNC4(&ht, key) == item);

	if (ht.mht_mask + 1 != num_buckets)
	{
	    /* hash table was expanded */
	    FUNC0(ht.mht_mask + 1 == num_buckets * MHT_GROWTH_FACTOR);
	    FUNC0(i + 1 == (num_buckets << MHT_LOG_LOAD_FACTOR));
	}
    }

    /* check presence of inserted items */
    for (i = 0; i < TEST_COUNT; i++)
    {
	key = FUNC1(i);
	item = FUNC4(&ht, key);
	FUNC0(item != NULL);
	FUNC0(item->mhi_key == key);
    }

    /* delete some items */
    for (i = 0; i < TEST_COUNT; i++)
    {
	if (i % 100 < 70)
	{
	    key = FUNC1(i);
	    item = FUNC4(&ht, key);
	    FUNC0(item != NULL);
	    FUNC0(item->mhi_key == key);

	    FUNC7(&ht, item);
	    FUNC0(FUNC4(&ht, key) == NULL);

	    FUNC3(&ht, item);
	    FUNC0(FUNC4(&ht, key) == item);

	    FUNC7(&ht, item);
	    FUNC0(FUNC4(&ht, key) == NULL);

	    FUNC8(item);
	}
    }

    /* check again */
    for (i = 0; i < TEST_COUNT; i++)
    {
	key = FUNC1(i);
	item = FUNC4(&ht, key);

	if (i % 100 < 70)
	{
	    FUNC0(item == NULL);
	}
	else
	{
	    FUNC0(item != NULL);
	    FUNC0(item->mhi_key == key);
	}
    }

    /* free hash table and all remaining items */
    FUNC5(&ht);
}