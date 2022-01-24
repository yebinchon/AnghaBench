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
typedef  int /*<<< orphan*/  HANDLE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 char* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*,char const*) ; 
 scalar_t__ FUNC5 (char const*) ; 
 char* FUNC6 (char const*,char) ; 

__attribute__((used)) static void FUNC7(const char* name, HANDLE *start_event, HANDLE *done_event)
{
    const char* basename;
    char* event_name;

    basename=FUNC6(name, '\\');
    basename=(basename ? basename+1 : name);
    event_name=FUNC2(FUNC1(), 0, 6+FUNC5(basename)+1);

    FUNC4(event_name, "start_%s", basename);
    *start_event=FUNC0(NULL, 0,0, event_name);
    FUNC4(event_name, "done_%s", basename);
    *done_event=FUNC0(NULL, 0,0, event_name);
    FUNC3(FUNC1(), 0, event_name);
}