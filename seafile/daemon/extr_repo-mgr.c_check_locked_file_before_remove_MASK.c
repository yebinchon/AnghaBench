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
typedef  int /*<<< orphan*/  gboolean ;
typedef  int /*<<< orphan*/  LockedFileSet ;
typedef  int /*<<< orphan*/  LockedFile ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *,char const*) ; 

__attribute__((used)) static gboolean
FUNC1 (LockedFileSet *fset, const char *path)
{
#if defined WIN32 || defined __APPLE__
    if (!fset)
        return TRUE;

    LockedFile *file = locked_file_set_lookup (fset, path);
    gboolean ret = TRUE;

    if (file)
        ret = FALSE;

    return ret;
#else
    return TRUE;
#endif
}