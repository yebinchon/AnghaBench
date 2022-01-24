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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,int,int,int) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  OwnerZOrder1A_chain ; 
 int /*<<< orphan*/  OwnerZOrder1B_chain ; 
 int /*<<< orphan*/  OwnerZOrder2A_chain ; 
 int /*<<< orphan*/  OwnerZOrder2B_chain ; 
 int /*<<< orphan*/  OwnerZOrder3A_chain ; 
 int /*<<< orphan*/  OwnerZOrder3B_chain ; 
 int /*<<< orphan*/  OwnerZOrder4A_chain ; 
 int /*<<< orphan*/  OwnerZOrder4B_chain ; 
 int /*<<< orphan*/  OwnerZOrder5A_chain ; 
 int /*<<< orphan*/  OwnerZOrder5B_chain ; 
 int /*<<< orphan*/  OwnerZOrderAParams ; 
 int /*<<< orphan*/  OwnerZOrderBParams ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  hWnd1 ; 
 int /*<<< orphan*/  hWnd2 ; 
 int /*<<< orphan*/  hWnd3 ; 
 int /*<<< orphan*/  hWnd4 ; 
 int /*<<< orphan*/  FUNC4 () ; 

__attribute__((used)) static void FUNC5()
{
    FUNC1(4,3,1,2);

    /* test how SetWindowPos can change the z order of owner windows */
    /* note that SWP_NOACTIVATE must be used because otherwise
       SetWindowPos will call SetWindowPos again with different parameters */
    FUNC3(hWnd1, 0, 0,0,0,0, OwnerZOrderAParams);
    FUNC2();
    FUNC0(OwnerZOrder1A_chain);
    FUNC1(4,3,1,2);

    FUNC3(hWnd2, 0, 0,0,0,0, OwnerZOrderAParams);
    FUNC2();
    FUNC0(OwnerZOrder2A_chain);
    FUNC1(2,4,3,1);

    FUNC3(hWnd3, 0, 0,0,0,0, OwnerZOrderAParams);
    FUNC2();
    FUNC0(OwnerZOrder3A_chain);
    FUNC1(3,4,1,2);

    FUNC3(hWnd1, 0, 0,0,0,0, OwnerZOrderAParams);
    FUNC2();
    FUNC0(OwnerZOrder4A_chain);
    FUNC1(3,4,1,2);

    FUNC3(hWnd4, 0, 0,0,0,0, OwnerZOrderAParams);
    FUNC2();
    FUNC0(OwnerZOrder5A_chain);
    FUNC1(4,3,1,2);

    /* now do the same thing one more time with SWP_NOOWNERZORDER */
    /* SWP_NOACTIVATE is needed because without it SetActiveWindow 
       will be calledit and it will call SetWindowPos again
       WITHOUT SWP_NOOWNERZORDER. that means that
       in order for SWP_NOOWNERZORDER to have effect we have to use 
       SWP_NOACTIVATE as well */
    FUNC4();
    FUNC1(4,3,2,1);

    FUNC3(hWnd1, 0, 0,0,0,0, OwnerZOrderBParams);
    FUNC2();
    FUNC0(OwnerZOrder1B_chain);
    FUNC1(1,4,3,2);

    FUNC3(hWnd2, 0, 0,0,0,0, OwnerZOrderBParams);
    FUNC2();
    FUNC0(OwnerZOrder2B_chain);
    FUNC1(2,1,4,3);

    FUNC3(hWnd3, 0, 0,0,0,0, OwnerZOrderBParams);
    FUNC2();
    FUNC0(OwnerZOrder3B_chain);
    FUNC1(3,2,1,4);

    FUNC3(hWnd1, 0, 0,0,0,0, OwnerZOrderBParams);
    FUNC2();
    FUNC0(OwnerZOrder4B_chain);
    FUNC1(1,3,2,4);

    FUNC3(hWnd4, 0, 0,0,0,0, OwnerZOrderBParams);
    FUNC2();
    FUNC0(OwnerZOrder5B_chain);
    FUNC1(4,1,3,2);

}