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
typedef  int /*<<< orphan*/  SeafRepo ;

/* Variables and functions */
 int TRUE ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ FUNC1 (char*,char*) ; 
 int /*<<< orphan*/  seaf ; 
 char* FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,char*) ; 

__attribute__((used)) static gboolean
FUNC4 (SeafRepo *repo)
{
    char *notify_setting = FUNC2(seaf, "notify_sync");
    if (notify_setting == NULL) {
        FUNC3(seaf, "notify_sync", "on");
        return TRUE;
    }

    gboolean result = (FUNC1(notify_setting, "on") == 0);
    FUNC0 (notify_setting);
    return result;
}