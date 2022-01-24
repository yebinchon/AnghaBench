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
struct TYPE_5__ {struct TYPE_5__* path; struct TYPE_5__* next; } ;
typedef  TYPE_1__ work_queue_t ;

/* Variables and functions */
 scalar_t__ TRUE ; 
 scalar_t__ done_adding_files ; 
 int /*<<< orphan*/  files_ready ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 TYPE_1__* work_queue ; 
 int /*<<< orphan*/  work_queue_mtx ; 
 int /*<<< orphan*/ * work_queue_tail ; 

void *FUNC7(void *i) {
    work_queue_t *queue_item;
    int worker_id = *(int *)i;

    FUNC1("Worker %i started", worker_id);
    while (TRUE) {
        FUNC4(&work_queue_mtx);
        while (work_queue == NULL) {
            if (done_adding_files) {
                FUNC5(&work_queue_mtx);
                FUNC1("Worker %i finished.", worker_id);
                FUNC3(NULL);
            }
            FUNC2(&files_ready, &work_queue_mtx);
        }
        queue_item = work_queue;
        work_queue = work_queue->next;
        if (work_queue == NULL) {
            work_queue_tail = NULL;
        }
        FUNC5(&work_queue_mtx);

        FUNC6(queue_item->path);
        FUNC0(queue_item->path);
        FUNC0(queue_item);
    }
}