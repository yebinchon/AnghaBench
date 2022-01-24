#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {scalar_t__ data; struct TYPE_6__* next; } ;
struct TYPE_5__ {TYPE_2__* group_perms; TYPE_2__* user_perms; } ;
typedef  TYPE_1__ HttpFolderPermRes ;
typedef  TYPE_2__ GList ;
typedef  int /*<<< orphan*/  FolderPerm ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 

void
FUNC2 (HttpFolderPermRes *res)
{
    GList *ptr;

    if (!res)
        return;
    for (ptr = res->user_perms; ptr; ptr = ptr->next)
        FUNC0 ((FolderPerm *)ptr->data);
    for (ptr = res->group_perms; ptr; ptr = ptr->next)
        FUNC0 ((FolderPerm *)ptr->data);
    FUNC1 (res);
}