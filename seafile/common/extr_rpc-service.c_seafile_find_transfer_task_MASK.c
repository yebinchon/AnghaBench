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
struct TYPE_2__ {int /*<<< orphan*/  http_tx_mgr; } ;
typedef  int /*<<< orphan*/  HttpTxTask ;
typedef  int /*<<< orphan*/  GObject ;
typedef  int /*<<< orphan*/  GError ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ,char const*) ; 
 TYPE_1__* seaf ; 

GObject *
FUNC2 (const char *repo_id, GError *error)
{
    HttpTxTask *http_task;

    http_task = FUNC1 (seaf->http_tx_mgr, repo_id);
    if (http_task)
        return (GObject *)FUNC0 (http_task);

    return NULL;
}