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
typedef  scalar_t__ HRESULT ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 scalar_t__ S_OK ; 
 int /*<<< orphan*/  FUNC1 (int,char*,scalar_t__) ; 
 int /*<<< orphan*/  test_job ; 

__attribute__((used)) static void FUNC2(void)
{
    HRESULT hr;
    IUnknown *unk;

    unk = (IUnknown*)0xdeadbeef;
    hr = FUNC0(test_job, &unk);
    FUNC1(hr == S_OK, "got 0x%08x\n", hr);
    FUNC1(unk == NULL, "got %p\n", unk);
}