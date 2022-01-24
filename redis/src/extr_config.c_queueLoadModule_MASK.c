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
struct moduleLoadQueueEntry {int argc; int /*<<< orphan*/ * argv; int /*<<< orphan*/  path; } ;
typedef  int /*<<< orphan*/  sds ;
typedef  int /*<<< orphan*/  robj ;
struct TYPE_2__ {int /*<<< orphan*/  loadmodule_queue; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct moduleLoadQueueEntry*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 TYPE_1__ server ; 
 void* FUNC4 (int) ; 

void FUNC5(sds path, sds *argv, int argc) {
    int i;
    struct moduleLoadQueueEntry *loadmod;

    loadmod = FUNC4(sizeof(struct moduleLoadQueueEntry));
    loadmod->argv = FUNC4(sizeof(robj*)*argc);
    loadmod->path = FUNC3(path);
    loadmod->argc = argc;
    for (i = 0; i < argc; i++) {
        loadmod->argv[i] = FUNC0(argv[i],FUNC2(argv[i]));
    }
    FUNC1(server.loadmodule_queue,loadmod);
}