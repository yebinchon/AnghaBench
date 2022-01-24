#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  mutex; int /*<<< orphan*/  tls; int /*<<< orphan*/  state; } ;
typedef  TYPE_1__ opj_thread_pool_t ;

/* Variables and functions */
 int /*<<< orphan*/  OPJWTS_OK ; 
 scalar_t__ FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC5 () ; 

opj_thread_pool_t* FUNC6(int num_threads)
{
    opj_thread_pool_t* tp;

    tp = (opj_thread_pool_t*) FUNC0(1, sizeof(opj_thread_pool_t));
    if (!tp) {
        return NULL;
    }
    tp->state = OPJWTS_OK;

    if (num_threads <= 0) {
        tp->tls = FUNC5();
        if (!tp->tls) {
            FUNC1(tp);
            tp = NULL;
        }
        return tp;
    }

    tp->mutex = FUNC2();
    if (!tp->mutex) {
        FUNC1(tp);
        return NULL;
    }
    if (!FUNC4(tp, num_threads)) {
        FUNC3(tp);
        return NULL;
    }
    return tp;
}