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
struct TYPE_4__ {struct TYPE_4__* effective_url; struct TYPE_4__* server_url; struct TYPE_4__* random_key; struct TYPE_4__* email; struct TYPE_4__* peer_port; struct TYPE_4__* peer_addr; struct TYPE_4__* repo_name; struct TYPE_4__* token; struct TYPE_4__* passwd; struct TYPE_4__* worktree; struct TYPE_4__* tx_id; } ;
typedef  TYPE_1__ CloneTask ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 

__attribute__((used)) static void
FUNC1 (CloneTask *task)
{
    FUNC0 (task->tx_id);
    FUNC0 (task->worktree);
    FUNC0 (task->passwd);
    FUNC0 (task->token);
    FUNC0 (task->repo_name);
    FUNC0 (task->peer_addr);
    FUNC0 (task->peer_port);
    FUNC0 (task->email);
    FUNC0 (task->random_key);
    FUNC0 (task->server_url);
    FUNC0 (task->effective_url);

    FUNC0 (task);
}