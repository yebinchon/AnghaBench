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

/* Variables and functions */
 int /*<<< orphan*/  PACKAGE_NAME ; 
 char const* FUNC0 (int /*<<< orphan*/ ,char const*) ; 
 scalar_t__ FUNC1 (char const) ; 

const char *FUNC2(const char *msgid)
{
#ifdef ENABLE_NLS
    if (likely(*msgid))
        return dgettext (PACKAGE_NAME, msgid);
#endif
    return msgid;
}