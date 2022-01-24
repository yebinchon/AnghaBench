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
struct TYPE_4__ {struct TYPE_4__* token; struct TYPE_4__* dest_id; struct TYPE_4__* tx_id; } ;
typedef  TYPE_1__ SyncTask ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 

__attribute__((used)) static void
FUNC1 (SyncTask *task)
{
    FUNC0 (task->tx_id);
    FUNC0 (task->dest_id);
    FUNC0 (task->token);
    FUNC0 (task);
}