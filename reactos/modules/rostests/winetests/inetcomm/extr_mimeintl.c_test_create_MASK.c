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
typedef  int ULONG ;
typedef  int /*<<< orphan*/  IMimeInternational ;
typedef  scalar_t__ HRESULT ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ **) ; 
 scalar_t__ S_OK ; 
 int /*<<< orphan*/  FUNC2 (int,char*,int) ; 

__attribute__((used)) static void FUNC3(void)
{
    IMimeInternational *internat, *internat2;
    HRESULT hr;
    ULONG ref;

    hr = FUNC1(&internat);
    FUNC2(hr == S_OK, "ret %08x\n", hr);
    hr = FUNC1(&internat2);
    FUNC2(hr == S_OK, "ret %08x\n", hr);

    /* Under w2k8 it's no longer a singleton */
    if(internat == internat2)
    {
        /* test to show that the object is a singleton with
           a reference held by the dll. */
        ref = FUNC0(internat2);
        FUNC2(ref == 2 ||
           ref == 1, /* win95 - object is a static singleton */
           "got %d\n", ref);

        ref = FUNC0(internat);
        FUNC2(ref == 1, "got %d\n", ref);
    }
    else
    {
        ref = FUNC0(internat2);
        FUNC2(ref == 0, "got %d\n", ref);

        ref = FUNC0(internat);
        FUNC2(ref == 0, "got %d\n", ref);
    }

}