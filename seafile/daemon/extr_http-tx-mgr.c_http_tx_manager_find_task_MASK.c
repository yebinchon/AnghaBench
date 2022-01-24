#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {TYPE_1__* priv; } ;
struct TYPE_4__ {int /*<<< orphan*/  download_tasks; int /*<<< orphan*/  upload_tasks; } ;
typedef  int /*<<< orphan*/  HttpTxTask ;
typedef  TYPE_2__ HttpTxManager ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ,char const*) ; 

HttpTxTask *
FUNC1 (HttpTxManager *manager, const char *repo_id)
{
    HttpTxTask *task = NULL;

    task = FUNC0 (manager->priv->upload_tasks, repo_id);
    if (task)
        return task;

    task = FUNC0 (manager->priv->download_tasks, repo_id);
    return task;
}