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
typedef  int /*<<< orphan*/  gboolean ;
struct TYPE_2__ {int /*<<< orphan*/  sync_extra_temp_file; } ;
typedef  int /*<<< orphan*/  GPatternSpec ;
typedef  int /*<<< orphan*/  GList ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 scalar_t__ SEAF_DIR_NAME_LEN ; 
 int /*<<< orphan*/  TRUE ; 
 char* FUNC0 (char*,char const*,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  FUNC3 (char const*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ ** ignore_patterns ; 
 int /*<<< orphan*/ ** office_temp_ignore_patterns ; 
 TYPE_1__* seaf ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC5 (char*,char const*) ; 
 scalar_t__ FUNC6 (char const*,char) ; 
 scalar_t__ FUNC7 (char const*) ; 

__attribute__((used)) static gboolean
FUNC8(const char *basepath, const char *filename, void *data)
{
    GPatternSpec **spec = ignore_patterns;
    GList *ignore_list = (GList *)data;

    if (!FUNC3 (filename, -1, NULL)) {
        FUNC5 ("File name %s contains non-UTF8 characters, skip.\n", filename);
        return TRUE;
    }

    /* Ignore file/dir if its name is too long. */
    if (FUNC7(filename) >= SEAF_DIR_NAME_LEN)
        return TRUE;

    if (FUNC6 (filename, '/'))
        return TRUE;

    while (*spec) {
        if (FUNC2(*spec, filename))
            return TRUE;
        spec++;
    }

    if (!seaf->sync_extra_temp_file) {
        spec = office_temp_ignore_patterns;
        while (*spec) {
            if (FUNC2(*spec, filename))
                return TRUE;
            spec++;
        }
    }

    if (basepath) {
        char *fullpath = FUNC0 ("/", basepath, filename, NULL);
        if (FUNC4 (ignore_list, fullpath)) {
            FUNC1 (fullpath);
            return TRUE;
        }
        FUNC1 (fullpath);
    }

    return FALSE;
}