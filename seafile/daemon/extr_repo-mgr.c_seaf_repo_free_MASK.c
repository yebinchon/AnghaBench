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
struct TYPE_4__ {struct TYPE_4__* token; struct TYPE_4__* email; struct TYPE_4__* relay_id; struct TYPE_4__* worktree; struct TYPE_4__* category; struct TYPE_4__* desc; struct TYPE_4__* name; scalar_t__ head; } ;
typedef  TYPE_1__ SeafRepo ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 

void
FUNC2 (SeafRepo *repo)
{
    if (repo->head) FUNC1 (repo->head);

    FUNC0 (repo->name);
    FUNC0 (repo->desc);
    FUNC0 (repo->category);
    FUNC0 (repo->worktree);
    FUNC0 (repo->relay_id);
    FUNC0 (repo->email);
    FUNC0 (repo->token);
    FUNC0 (repo);
}