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
typedef  int UINT ;
typedef  int /*<<< orphan*/  IMultiLanguage2 ;
typedef  scalar_t__ HRESULT ;

/* Variables and functions */
 scalar_t__ E_INVALIDARG ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int*) ; 
 scalar_t__ S_OK ; 
 int /*<<< orphan*/  FUNC1 (int,char*,scalar_t__,...) ; 

__attribute__((used)) static void FUNC2(IMultiLanguage2 *iML2)
{
    HRESULT hr;
    UINT value;

    value = 0xdeadbeef;
    hr = FUNC0(iML2, &value);
    FUNC1( (hr == S_OK) && value,
        "got 0x%x with %d (expected S_OK with '!= 0')\n", hr, value);

    hr = FUNC0(iML2, NULL);
    FUNC1(hr == E_INVALIDARG, "got 0x%x (expected E_INVALIDARG)\n", hr);

}