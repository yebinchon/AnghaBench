#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  size_t ulong_t ;
struct TYPE_6__ {int /*<<< orphan*/  ht_lock; TYPE_3__* ht_bins; int /*<<< orphan*/  ht_bits; } ;
typedef  TYPE_1__ tsd_hash_table_t ;
struct TYPE_7__ {int /*<<< orphan*/  he_list; int /*<<< orphan*/  he_pid_list; int /*<<< orphan*/  he_key_list; int /*<<< orphan*/ * he_value; int /*<<< orphan*/ * he_dtor; scalar_t__ he_pid; scalar_t__ he_key; } ;
typedef  TYPE_2__ tsd_hash_entry_t ;
struct TYPE_8__ {int /*<<< orphan*/  hb_lock; int /*<<< orphan*/  hb_head; } ;
typedef  TYPE_3__ tsd_hash_bin_t ;
typedef  scalar_t__ pid_t ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  KM_PUSHPAGE ; 
 scalar_t__ PID_KEY ; 
 size_t FUNC2 (size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 TYPE_2__* FUNC4 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC7(tsd_hash_table_t *table, pid_t pid)
{
	tsd_hash_entry_t *entry;
	tsd_hash_bin_t *bin;
	ulong_t hash;

	/* Allocate entry to be used as the process reference */
	entry = FUNC4(sizeof (tsd_hash_entry_t), KM_PUSHPAGE);
	if (entry == NULL)
		return (ENOMEM);

	FUNC5(&table->ht_lock);
	entry->he_key = PID_KEY;
	entry->he_pid = pid;
	entry->he_dtor = NULL;
	entry->he_value = NULL;
	FUNC0(&entry->he_list);
	FUNC1(&entry->he_key_list);
	FUNC1(&entry->he_pid_list);

	hash = FUNC2((ulong_t)PID_KEY * (ulong_t)pid, table->ht_bits);
	bin = &table->ht_bins[hash];
	FUNC5(&bin->hb_lock);

	FUNC3(&entry->he_list, &bin->hb_head);

	FUNC6(&bin->hb_lock);
	FUNC6(&table->ht_lock);

	return (0);
}