#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_19__   TYPE_9__ ;
typedef  struct TYPE_18__   TYPE_8__ ;
typedef  struct TYPE_17__   TYPE_2__ ;
typedef  struct TYPE_16__   TYPE_1__ ;
typedef  struct TYPE_15__   TYPE_11__ ;

/* Type definitions */
struct TYPE_17__ {int /*<<< orphan*/  type; TYPE_8__* unit; TYPE_9__* object_list; TYPE_9__* subject_list; TYPE_11__* transaction_next; TYPE_1__* transaction_prev; int /*<<< orphan*/  jobs; } ;
typedef  TYPE_2__ Transaction ;
struct TYPE_19__ {TYPE_2__* subject; scalar_t__ matters; } ;
struct TYPE_18__ {int /*<<< orphan*/  id; } ;
struct TYPE_16__ {TYPE_11__* transaction_next; } ;
struct TYPE_15__ {TYPE_1__* transaction_prev; } ;
typedef  TYPE_2__ Job ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,TYPE_8__*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,TYPE_8__*,TYPE_11__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_9__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_8__*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*,TYPE_2__*,int) ; 

__attribute__((used)) static void FUNC7(Transaction *tr, Job *j, bool delete_dependencies) {
        FUNC0(tr);
        FUNC0(j);

        if (j->transaction_prev)
                j->transaction_prev->transaction_next = j->transaction_next;
        else if (j->transaction_next)
                FUNC2(tr->jobs, j->unit, j->transaction_next);
        else
                FUNC1(tr->jobs, j->unit, j);

        if (j->transaction_next)
                j->transaction_next->transaction_prev = j->transaction_prev;

        j->transaction_prev = j->transaction_next = NULL;

        while (j->subject_list)
                FUNC3(j->subject_list);

        while (j->object_list) {
                Job *other = j->object_list->matters ? j->object_list->subject : NULL;

                FUNC3(j->object_list);

                if (other && delete_dependencies) {
                        FUNC5(other->unit,
                                       "Deleting job %s/%s as dependency of job %s/%s",
                                       other->unit->id, FUNC4(other->type),
                                       j->unit->id, FUNC4(j->type));
                        FUNC6(tr, other, delete_dependencies);
                }
        }
}