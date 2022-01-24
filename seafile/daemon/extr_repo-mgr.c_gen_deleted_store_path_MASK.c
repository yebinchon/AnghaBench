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
struct TYPE_2__ {int /*<<< orphan*/  deleted_store; } ;

/* Variables and functions */
 int /*<<< orphan*/  F_OK ; 
 scalar_t__ FUNC0 (char*,int /*<<< orphan*/ ) ; 
 char* FUNC1 (int /*<<< orphan*/ ,char const*,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 char* FUNC3 (char*,char const*,int) ; 
 TYPE_1__* seaf ; 

__attribute__((used)) static char *
FUNC4 (const char *type, const char *repo_id)
{
    int n = 1;
    char *path = NULL;
    char *name = NULL;

    path = FUNC1 (seaf->deleted_store, type, repo_id, NULL);
    while (FUNC0(path, F_OK) == 0 && n < 10) {
        FUNC2 (path);
        name = FUNC3 ("%s(%d)", repo_id, n);
        path = FUNC1 (seaf->deleted_store, type, name, NULL);
        FUNC2 (name);
        ++n;
    }

    if (n == 10) {
        FUNC2 (path);
        return NULL;
    }

    return path;
}