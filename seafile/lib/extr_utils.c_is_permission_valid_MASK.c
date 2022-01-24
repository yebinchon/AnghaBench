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

/* Variables and functions */
 int FALSE ; 
 scalar_t__ FUNC0 (char const*) ; 
 scalar_t__ FUNC1 (char const*,char*) ; 

gboolean
FUNC2 (const char *perm)
{
    if (FUNC0 (perm)) {
        return FALSE;
    }

    return FUNC1 (perm, "r") == 0 || FUNC1 (perm, "rw") == 0;
}