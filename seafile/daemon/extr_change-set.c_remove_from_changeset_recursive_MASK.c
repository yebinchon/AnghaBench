#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  scalar_t__ gboolean ;
typedef  int /*<<< orphan*/  ChangeSetDirent ;
typedef  int /*<<< orphan*/  ChangeSet ;

/* Variables and functions */
 scalar_t__ FALSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,char const*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 char* FUNC3 (char const*) ; 
 scalar_t__ FUNC4 (char const*) ; 
 char* FUNC5 (char*,char) ; 

__attribute__((used)) static void
FUNC6 (ChangeSet *changeset,
                                 const char *path,
                                 gboolean remove_parent,
                                 const char *top_dir)
{
    ChangeSetDirent *dent;
    gboolean parent_empty = FALSE;

    dent = FUNC1 (changeset, path, &parent_empty);
    FUNC0 (dent);

    if (remove_parent && parent_empty) {
        char *parent = FUNC3(path);
        char *slash = FUNC5 (parent, '/');
        if (slash) {
            *slash = '\0';
            if (FUNC4(parent) >= FUNC4(top_dir)) {
                /* Recursively remove parent dirs. */
                FUNC6 (changeset,
                                                 parent,
                                                 remove_parent,
                                                 top_dir);
            }
        }
        FUNC2 (parent);
    }
}