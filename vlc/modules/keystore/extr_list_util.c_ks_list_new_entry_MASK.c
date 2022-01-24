#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  ppsz_values; int /*<<< orphan*/ * p_secret; } ;
typedef  TYPE_1__ vlc_keystore_entry ;
struct ks_list {int i_count; int i_max; TYPE_1__* p_entries; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ks_list*) ; 
 TYPE_1__* FUNC2 (TYPE_1__*,int) ; 

vlc_keystore_entry *
FUNC3(struct ks_list *p_list)
{
    if (p_list->i_count + 1 > p_list->i_max)
    {
        p_list->i_max += 10;
        vlc_keystore_entry *p_entries = FUNC2(p_list->p_entries, p_list->i_max
                                                * sizeof(*p_list->p_entries));
        if (!p_entries)
        {
            FUNC1(p_list);
            return NULL;
        }
        p_list->p_entries = p_entries;
    }
    vlc_keystore_entry *p_entry = &p_list->p_entries[p_list->i_count];
    p_entry->p_secret = NULL;
    FUNC0(p_entry->ppsz_values);
    p_list->i_count++;

    return p_entry;
}