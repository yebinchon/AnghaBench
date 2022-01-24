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
typedef  int /*<<< orphan*/  va_list ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  context ; 
 int /*<<< orphan*/  FUNC1 () ; 
 scalar_t__ oom ; 
 int FUNC2 (char**,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 

const char *FUNC4 (const char *fmt, va_list ap)
{
    char *msg;

    FUNC0 (fmt != NULL);
    if (FUNC2 (&msg, fmt, ap) == -1)
        msg = (char *)oom;

    FUNC1 ();
    FUNC3 (context, msg);
    return msg;
}