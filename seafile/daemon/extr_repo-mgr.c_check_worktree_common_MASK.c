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
typedef  int /*<<< orphan*/  gboolean ;
struct TYPE_4__ {int /*<<< orphan*/  id; int /*<<< orphan*/  name; int /*<<< orphan*/  head; } ;
typedef  TYPE_1__ SeafRepo ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  TRUE ; 
 scalar_t__ FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static gboolean
FUNC2 (SeafRepo *repo)
{
    if (!repo->head) {
        FUNC1 ("Head for repo '%s'(%.8s) is not set.\n",
                      repo->name, repo->id);
        return FALSE;
    }

    if (FUNC0 (repo) < 0) {
        return FALSE;
    }

    return TRUE;
}