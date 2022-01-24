#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct index_state {int cache_nr; TYPE_1__** cache; } ;
struct TYPE_2__ {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int FUNC0 (struct index_state*,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct index_state*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC3 (char const*) ; 

int FUNC4(struct index_state *istate, const char *path)
{
    int pos = FUNC0(istate, path, FUNC3(path));
    if (pos < 0)
        pos = -pos-1;
    /* cache_tree_invalidate_path(istate->cache_tree, path); */
    while (pos < istate->cache_nr && !FUNC2(istate->cache[pos]->name, path))
        FUNC1(istate, pos);
    return 0;
}