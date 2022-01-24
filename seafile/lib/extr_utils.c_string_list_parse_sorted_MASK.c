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
typedef  int /*<<< orphan*/  GList ;
typedef  int /*<<< orphan*/  GCompareFunc ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ g_strcmp0 ; 
 int /*<<< orphan*/ * FUNC1 (char const*,char const*) ; 

GList *
FUNC2 (const char *list_in_str, const char *seperator)
{
    GList *list = FUNC1 (list_in_str, seperator);

    return FUNC0 (list, (GCompareFunc)g_strcmp0);
}