#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int /*<<< orphan*/ * data; struct TYPE_9__* next; } ;
typedef  int /*<<< orphan*/  SeafRepo ;
typedef  int /*<<< orphan*/  GObject ;
typedef  TYPE_1__ GList ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  free_repo_obj ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC2 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC3 (TYPE_1__*) ; 

__attribute__((used)) static GList *
FUNC4 (GList *inner_repos)
{
    GList *ret = NULL, *ptr;
    GObject *repo = NULL;

    for (ptr = inner_repos; ptr; ptr=ptr->next) {
        SeafRepo *r = ptr->data;
        repo = FUNC0 (r);
        if (!repo) {
            FUNC1 (ret, free_repo_obj);
            return NULL;
        }

        ret = FUNC2 (ret, repo);
    }

    return FUNC3 (ret);
}