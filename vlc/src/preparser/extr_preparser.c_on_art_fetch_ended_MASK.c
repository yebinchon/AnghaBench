#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/  preparse_status; TYPE_3__* req; } ;
typedef  TYPE_2__ input_preparser_task_t ;
struct TYPE_8__ {int /*<<< orphan*/  userdata; int /*<<< orphan*/  item; TYPE_1__* cbs; } ;
typedef  TYPE_3__ input_preparser_req_t ;
typedef  int /*<<< orphan*/  input_item_t ;
struct TYPE_6__ {int /*<<< orphan*/  (* on_preparse_ended ) (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(input_item_t *item, bool fetched, void *userdata)
{
    FUNC1(*item);
    FUNC1(fetched);
    input_preparser_task_t *task = userdata;
    input_preparser_req_t *req = task->req;

    FUNC3(req->item, true);

    if (req->cbs && req->cbs->on_preparse_ended)
        req->cbs->on_preparse_ended(req->item, task->preparse_status, req->userdata);

    FUNC0(req);
    FUNC2(task);
}