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
typedef  int /*<<< orphan*/  vlc_object_t ;
typedef  scalar_t__ vlc_fourcc_t ;

/* Variables and functions */
 int /*<<< orphan*/  VIDEO_ES ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,char*) ; 
 char* FUNC2 (int /*<<< orphan*/ *,char const*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static vlc_fourcc_t FUNC4 (vlc_object_t *obj, const char *varname)
{
    char *str = FUNC2 (obj, varname);
    if (str == NULL)
        return 0;

    vlc_fourcc_t fourcc = FUNC3 (VIDEO_ES, str);
    if (fourcc == 0)
        FUNC1 (obj, "invalid codec %s", str);
    FUNC0 (str);
    return fourcc;
}