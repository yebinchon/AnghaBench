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
typedef  int /*<<< orphan*/  GCompareDataFunc ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ g_strcmp0 ; 
 int /*<<< orphan*/  FUNC2 (char const*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,char const*) ; 

GList *
FUNC4 (GList *str_list, const char *string)
{
    FUNC1 (string != NULL, str_list);

    if (FUNC3(str_list, string))
        return str_list;

    str_list = FUNC0 (str_list, FUNC2(string),
                                 (GCompareDataFunc)g_strcmp0, NULL);
    return str_list;
}