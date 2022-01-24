#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {scalar_t__ lcid; } ;
typedef  TYPE_1__ TLIBATTR ;
typedef  int /*<<< orphan*/  ITypeLib ;
typedef  int /*<<< orphan*/  HRESULT ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,TYPE_1__**) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  LANG_NEUTRAL ; 
 int /*<<< orphan*/  LIBID_TestTypelib ; 
 int /*<<< orphan*/  LOCALE_NEUTRAL ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SUBLANG_NEUTRAL ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/  (*) (int /*<<< orphan*/ *,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ **)) ; 

__attribute__((used)) static void FUNC10(void)
{
    ITypeLib *pTypeLib;
    HRESULT hr;
    TLIBATTR *pattr;

    hr = FUNC5(&LIBID_TestTypelib, 2, 5, LOCALE_NEUTRAL, &pTypeLib);
    FUNC9(hr, LoadRegTypeLib);
    if (FUNC0(hr))
        return;

    hr = FUNC2(pTypeLib, &pattr);
    FUNC9(hr, GetLibAttr);
    if (FUNC7(hr))
    {
        FUNC8(pattr->lcid == FUNC6(LANG_NEUTRAL, SUBLANG_NEUTRAL), "lcid %x\n", pattr->lcid);

        FUNC4(pTypeLib, pattr);
    }

    FUNC3(pTypeLib);
}