#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int index; int /*<<< orphan*/  el; } ;
typedef  TYPE_1__ benchmarkThread ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  showThroughput ; 
 TYPE_1__* FUNC2 (int) ; 

__attribute__((used)) static benchmarkThread *FUNC3(int index) {
    benchmarkThread *thread = FUNC2(sizeof(*thread));
    if (thread == NULL) return NULL;
    thread->index = index;
    thread->el = FUNC0(1024*10);
    FUNC1(thread->el,1,showThroughput,NULL,NULL);
    return thread;
}