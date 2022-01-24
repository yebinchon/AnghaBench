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
 int /*<<< orphan*/  HKEY_CLASSES_ROOT ; 
 int MAX_PATH ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,char const*) ; 

__attribute__((used)) static void FUNC3(const char* extension)
{
    char classname[MAX_PATH];

    FUNC2(classname, "shlexec%s", extension);
    FUNC0(classname);
    FUNC1(HKEY_CLASSES_ROOT, extension);
}