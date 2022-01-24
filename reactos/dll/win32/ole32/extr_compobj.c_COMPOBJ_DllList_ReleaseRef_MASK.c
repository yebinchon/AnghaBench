#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {struct TYPE_4__* library_name; int /*<<< orphan*/  library; int /*<<< orphan*/  entry; int /*<<< orphan*/  refs; } ;
typedef  TYPE_1__ OpenDll ;
typedef  scalar_t__ BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  csOpenDllList ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC8(OpenDll *entry, BOOL free_entry)
{
    if (!FUNC4(&entry->refs) && free_entry)
    {
        FUNC0(&csOpenDllList);
        FUNC7(&entry->entry);
        FUNC5(&csOpenDllList);

        FUNC6("freeing %p\n", entry->library);
        FUNC1(entry->library);

        FUNC3(FUNC2(), 0, entry->library_name);
        FUNC3(FUNC2(), 0, entry);
    }
}