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
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC1 (int) ; 
 scalar_t__ S_FALSE ; 
 scalar_t__ S_OK ; 
 scalar_t__ FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int,char*,int,scalar_t__) ; 

__attribute__((used)) static void FUNC4(IMultiLanguage2 *ml2)
{
    UINT i;
    HRESULT hr;

    for (i = 0; i < 0xffff; i++)
    {
        hr = FUNC0(ml2, i);

        /* it would be better to use IMultiLanguage2_ValidateCodePageEx here but that brings
         * up an installation dialog on some platforms, even when specifying CPIOD_PEEK.
         */
        if (FUNC1(i))
            FUNC3(hr == S_OK ||
               FUNC2(hr == S_FALSE) ||  /* win2k */
               FUNC2(hr == E_INVALIDARG),  /* win2k */
               "code page %u is valid but not installable 0x%08x\n", i, hr);
    }
}