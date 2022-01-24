#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int uint_t ;
struct TYPE_6__ {int ht_bits; int ht_key; int /*<<< orphan*/  ht_lock; TYPE_1__* ht_bins; } ;
typedef  TYPE_2__ tsd_hash_table_t ;
typedef  int /*<<< orphan*/  tsd_hash_bin_t ;
struct TYPE_5__ {int /*<<< orphan*/  hb_head; int /*<<< orphan*/  hb_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  KM_SLEEP ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,int) ; 
 void* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static tsd_hash_table_t *
FUNC4(uint_t bits)
{
	tsd_hash_table_t *table;
	int hash, size = (1 << bits);

	table = FUNC2(sizeof (tsd_hash_table_t), KM_SLEEP);
	if (table == NULL)
		return (NULL);

	table->ht_bins = FUNC2(sizeof (tsd_hash_bin_t) * size, KM_SLEEP);
	if (table->ht_bins == NULL) {
		FUNC1(table, sizeof (tsd_hash_table_t));
		return (NULL);
	}

	for (hash = 0; hash < size; hash++) {
		FUNC3(&table->ht_bins[hash].hb_lock);
		FUNC0(&table->ht_bins[hash].hb_head);
	}

	FUNC3(&table->ht_lock);
	table->ht_bits = bits;
	table->ht_key = 1;

	return (table);
}