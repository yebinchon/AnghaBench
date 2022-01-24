#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct index_state {int /*<<< orphan*/  i_name_hash; int /*<<< orphan*/  name_hash; } ;
struct cache_entry {char* name; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 char* FUNC2 (char*,int) ; 

void FUNC3(struct index_state *istate, struct cache_entry *ce)
{
    FUNC1 (istate->name_hash, ce->name);

#if defined WIN32 || defined __APPLE__
    char *i_name = g_utf8_strdown (ce->name, -1);
    g_hash_table_remove (istate->i_name_hash, i_name);
    g_free (i_name);
#endif
}