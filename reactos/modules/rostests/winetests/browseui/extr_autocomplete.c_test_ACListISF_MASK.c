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
typedef  int /*<<< orphan*/  IEnumString ;
typedef  int /*<<< orphan*/  IACList ;
typedef  scalar_t__ HRESULT ;

/* Variables and functions */
 int /*<<< orphan*/  CLSCTX_INPROC ; 
 int /*<<< orphan*/  CLSID_ACListISF ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,void**) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,void**) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,void**) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  IID_IACList ; 
 int /*<<< orphan*/  IID_IEnumString ; 
 scalar_t__ S_OK ; 
 int /*<<< orphan*/  FUNC5 (int,char*,scalar_t__,...) ; 

__attribute__((used)) static void FUNC6(void)
{
    IEnumString *enumstring;
    IACList *list, *list2;
    HRESULT hr;

    hr = FUNC0(&CLSID_ACListISF, NULL, CLSCTX_INPROC, &IID_IACList, (void**)&list);
    FUNC5(hr == S_OK, "failed to create ACListISF instance, 0x%08x\n", hr);

    hr = FUNC1(list, &IID_IEnumString, (void**)&enumstring);
    FUNC5(hr == S_OK, "got 0x%08x\n", hr);

    hr = FUNC3(enumstring, &IID_IACList, (void**)&list2);
    FUNC5(hr == S_OK, "got 0x%08x\n", hr);
    FUNC5(list == list2, "got %p, %p\n", list, list2);
    FUNC2(list2);

    FUNC4(enumstring);
    FUNC2(list);
}