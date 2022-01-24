#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_3__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  thread; } ;
typedef  TYPE_1__ benchmarkThread ;
struct TYPE_5__ {int num_threads; TYPE_1__** threads; } ;

/* Variables and functions */
 TYPE_3__ config ; 
 int /*<<< orphan*/  execBenchmarkThread ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  stderr ; 

__attribute__((used)) static void FUNC4() {
    int i;
    for (i = 0; i < config.num_threads; i++) {
        benchmarkThread *t = config.threads[i];
        if (FUNC2(&(t->thread), NULL, execBenchmarkThread, t)){
            FUNC1(stderr, "FATAL: Failed to start thread %d.\n", i);
            FUNC0(1);
        }
    }
    for (i = 0; i < config.num_threads; i++)
        FUNC3(config.threads[i]->thread, NULL);
}