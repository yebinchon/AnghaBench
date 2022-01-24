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
typedef  int /*<<< orphan*/  IPin ;
typedef  int /*<<< orphan*/  IMemInputPin ;

/* Variables and functions */
 scalar_t__ E_POINTER ; 
 int /*<<< orphan*/  IID_IMemInputPin ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,void**) ; 
 scalar_t__ S_OK ; 
 int /*<<< orphan*/  FUNC4 (int,char*) ; 

__attribute__((used)) static void FUNC5(IPin *pin)
{
    IMemInputPin *mpin = NULL;

    FUNC3(pin, &IID_IMemInputPin, (void **)&mpin);

    FUNC4(mpin != NULL, "No IMemInputPin found!\n");
    if (mpin)
    {
        FUNC4(FUNC1(mpin) == S_OK, "Receive can't block for pin!\n");
        FUNC4(FUNC0(mpin, NULL, 0) == E_POINTER, "NotifyAllocator likes a NULL pointer argument\n");
        FUNC2(mpin);
    }
    /* TODO */
}