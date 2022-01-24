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
 int /*<<< orphan*/  IID_IMemInputPin ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,void**) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static void FUNC3(IPin *pin)
{
    IMemInputPin *mpin = NULL;

    FUNC1(pin, &IID_IMemInputPin, (void **)&mpin);

    FUNC2(mpin == NULL, "IMemInputPin found!\n");
    if (mpin)
        FUNC0(mpin);
    /* TODO */
}