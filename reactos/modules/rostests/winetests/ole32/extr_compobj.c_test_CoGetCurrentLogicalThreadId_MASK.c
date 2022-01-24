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
typedef  scalar_t__ HRESULT ;
typedef  int /*<<< orphan*/  GUID ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ E_INVALIDARG ; 
 int /*<<< orphan*/  GUID_NULL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ S_OK ; 
 int /*<<< orphan*/  FUNC2 (int,char*,...) ; 

__attribute__((used)) static void FUNC3(void)
{
    HRESULT hr;
    GUID id;

    hr = FUNC0(NULL);
    FUNC2(hr == E_INVALIDARG, "got 0x%08x\n", hr);

    id = GUID_NULL;
    hr = FUNC0(&id);
    FUNC2(hr == S_OK, "got 0x%08x\n", hr);
    FUNC2(!FUNC1(&id, &GUID_NULL), "got null id\n");
}