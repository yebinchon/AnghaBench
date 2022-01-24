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
typedef  int /*<<< orphan*/  UINT ;
typedef  scalar_t__ HANDLE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (int,char*,scalar_t__) ; 

__attribute__((used)) static void FUNC5(void)
{
    UINT cf_dataobject = FUNC3("DataObject");
    UINT cf_ole_priv_data = FUNC3("Ole Private Data");
    HANDLE h;
    FUNC2(NULL);

    h = FUNC1(cf_dataobject);
    FUNC4(!h, "got %p\n", h);
    h = FUNC1(cf_ole_priv_data);
    FUNC4(!h, "got %p\n", h);

    FUNC0();
}