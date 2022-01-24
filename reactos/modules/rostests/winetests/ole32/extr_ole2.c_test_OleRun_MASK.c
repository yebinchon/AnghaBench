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
typedef  int /*<<< orphan*/  IUnknown ;
typedef  int HRESULT ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int S_OK ; 
 int /*<<< orphan*/  FUNC1 (int,char*,int) ; 
 int /*<<< orphan*/  testrunnable ; 
 int /*<<< orphan*/  unknown ; 

__attribute__((used)) static void FUNC2(void)
{
    HRESULT hr;

    /* doesn't support IRunnableObject */
    hr = FUNC0(&unknown);
    FUNC1(hr == S_OK, "OleRun failed 0x%08x\n", hr);

    hr = FUNC0((IUnknown*)&testrunnable);
    FUNC1(hr == 0xdeadc0de, "got 0x%08x\n", hr);
}