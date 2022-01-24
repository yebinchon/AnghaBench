#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_4__ ;
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct TYPE_14__ {int /*<<< orphan*/  mq_mgr; int /*<<< orphan*/  http_tx_mgr; } ;
struct TYPE_13__ {int /*<<< orphan*/ * data; struct TYPE_13__* next; } ;
struct TYPE_12__ {scalar_t__ len; int /*<<< orphan*/  str; } ;
struct TYPE_11__ {int /*<<< orphan*/  recv_bytes; void* last_recv_bytes; int /*<<< orphan*/  sent_bytes; void* last_sent_bytes; } ;
typedef  TYPE_1__ SeafSyncManager ;
typedef  int /*<<< orphan*/  HttpTxTask ;
typedef  TYPE_2__ GString ;
typedef  TYPE_3__ GList ;

/* Variables and functions */
 int TRUE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,TYPE_2__*) ; 
 void* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,int) ; 
 TYPE_2__* FUNC5 (int /*<<< orphan*/ *) ; 
 TYPE_3__* FUNC6 (int /*<<< orphan*/ ) ; 
 TYPE_3__* FUNC7 (int /*<<< orphan*/ ) ; 
 TYPE_4__* seaf ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC9 (void *vmanager)
{
    SeafSyncManager *mgr = vmanager;
    GString *buf = FUNC5 (NULL);
    GList *tasks, *ptr;
    HttpTxTask *http_task;

    mgr->last_sent_bytes = FUNC1 (&mgr->sent_bytes);
    FUNC2 (&mgr->sent_bytes, 0);
    mgr->last_recv_bytes = FUNC1 (&mgr->recv_bytes);
    FUNC2 (&mgr->recv_bytes, 0);

    tasks = FUNC7 (seaf->http_tx_mgr);
    for (ptr = tasks; ptr; ptr = ptr->next) {
        http_task = ptr->data;
        FUNC0 (http_task, buf);
    }
    FUNC3 (tasks);

    tasks = FUNC6 (seaf->http_tx_mgr);
    for (ptr = tasks; ptr; ptr = ptr->next) {
        http_task = ptr->data;
        FUNC0 (http_task, buf);
    }
    FUNC3 (tasks);

    if (buf->len != 0)
        FUNC8 (seaf->mq_mgr, "transfer",
                                              buf->str);

    FUNC4 (buf, TRUE);

    return TRUE;
}