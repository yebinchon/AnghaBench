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
typedef  int /*<<< orphan*/  gboolean ;
struct TYPE_6__ {scalar_t__ data; struct TYPE_6__* next; } ;
struct TYPE_5__ {int /*<<< orphan*/  st_mode; } ;
typedef  TYPE_1__ SeafStat ;
typedef  int /*<<< orphan*/  GPatternSpec ;
typedef  TYPE_2__ GList ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (char*) ; 
 char* FUNC5 (char const*,char*,int /*<<< orphan*/ *) ; 
 char* FUNC6 (char const*) ; 
 int FUNC7 (char*,TYPE_1__*) ; 

gboolean
FUNC8 (GList *ignore_list, const char *fullpath)
{
    char *str;
    SeafStat st;
    GPatternSpec *ignore_spec;
    GList *p;

    str = FUNC6(fullpath);

    int rc = FUNC7(str, &st);
    if (rc == 0 && FUNC0(st.st_mode)) {
        FUNC1 (str);
        str = FUNC5 (fullpath, "/", NULL);
    }

    for (p = ignore_list; p != NULL; p = p->next) {
        char *pattern = (char *)p->data;

        ignore_spec = FUNC4(pattern);
        if (FUNC2(ignore_spec, str)) {
            FUNC1 (str);
            FUNC3(ignore_spec);
            return TRUE;
        }
        FUNC3(ignore_spec);
    }

    FUNC1 (str);
    return FALSE;
}