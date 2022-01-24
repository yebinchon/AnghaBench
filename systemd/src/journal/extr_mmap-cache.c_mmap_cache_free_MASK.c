#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {scalar_t__ unused; int /*<<< orphan*/  fds; scalar_t__* contexts; } ;
typedef  TYPE_1__ MMapCache ;

/* Variables and functions */
 int MMAP_CACHE_MAX_CONTEXTS ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 

__attribute__((used)) static MMapCache *FUNC5(MMapCache *m) {
        int i;

        FUNC0(m);

        for (i = 0; i < MMAP_CACHE_MAX_CONTEXTS; i++)
                if (m->contexts[i])
                        FUNC1(m->contexts[i]);

        FUNC2(m->fds);

        while (m->unused)
                FUNC4(m->unused);

        return FUNC3(m);
}