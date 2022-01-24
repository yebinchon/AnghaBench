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
typedef  int gboolean ;
typedef  int /*<<< orphan*/  GPatternSpec ;

/* Variables and functions */
 int FALSE ; 
 int TRUE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (char*) ; 

__attribute__((used)) static gboolean
FUNC3 (const char *src_path, const char *dst_path)
{
    GPatternSpec *pattern = FUNC2 ("*.xlsx");
    int ret = FALSE;

    if (!FUNC0(pattern, src_path) &&
        FUNC0(pattern, dst_path))
        ret = TRUE;

    FUNC1 (pattern);
    return ret;
}