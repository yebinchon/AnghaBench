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
typedef  int /*<<< orphan*/  time_t ;
typedef  int /*<<< orphan*/  gint64 ;
typedef  int /*<<< orphan*/  GString ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 char* FUNC1 (char const*) ; 
 char* FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,char*,char const*,...) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (char*,int,char*,int /*<<< orphan*/ ) ; 
 char* FUNC7 (char*,char) ; 

char *
FUNC8 (const char *origin_path,
                   const char *modifier,
                   gint64 mtime)
{
    char time_buf[64];
    time_t t = (time_t)mtime;
    char *copy = FUNC1 (origin_path);
    GString *conflict_path = FUNC3 (NULL);
    char *dot, *ext;

    FUNC6(time_buf, 64, "%Y-%m-%d-%H-%M-%S", FUNC5(&t));

    dot = FUNC7 (copy, '.');

    if (dot != NULL) {
        *dot = '\0';
        ext = dot + 1;
        if (modifier)
            FUNC4 (conflict_path, "%s (SFConflict %s %s).%s",
                             copy, modifier, time_buf, ext);
        else
            FUNC4 (conflict_path, "%s (SFConflict %s).%s",
                             copy, time_buf, ext);
    } else {
        if (modifier)
            FUNC4 (conflict_path, "%s (SFConflict %s %s)",
                             copy, modifier, time_buf);
        else
            FUNC4 (conflict_path, "%s (SFConflict %s)",
                             copy, time_buf);
    }

    FUNC0 (copy);
    return FUNC2 (conflict_path, FALSE);
}