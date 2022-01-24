#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {int /*<<< orphan*/  header; TYPE_4__* bsc; } ;
typedef  TYPE_3__ stop_request_task_t ;
struct TYPE_8__ {TYPE_2__* window; int /*<<< orphan*/  IBindStatusCallback_iface; int /*<<< orphan*/  readed; } ;
struct TYPE_11__ {TYPE_1__ bsc; } ;
typedef  TYPE_4__ nsChannelBSC ;
struct TYPE_9__ {int /*<<< orphan*/  task_magic; } ;
typedef  int /*<<< orphan*/  HRESULT ;

/* Variables and functions */
 int /*<<< orphan*/  E_OUTOFMEMORY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 TYPE_3__* FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  stop_request_proc ; 
 int /*<<< orphan*/  stop_request_task_destr ; 

__attribute__((used)) static HRESULT FUNC5(nsChannelBSC *This)
{
    stop_request_task_t *task;

    if(!This->bsc.readed) {
        FUNC1("No data read, calling OnStartRequest\n");
        FUNC3(This);
    }

    task = FUNC2(sizeof(*task));
    if(!task)
        return E_OUTOFMEMORY;

    FUNC0(&This->bsc.IBindStatusCallback_iface);
    task->bsc = This;

    return FUNC4(&task->header, stop_request_proc, stop_request_task_destr, This->bsc.window->task_magic);
}