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
typedef  int /*<<< orphan*/  nsAString ;
typedef  int /*<<< orphan*/  VARIANT ;
typedef  int /*<<< orphan*/  HRESULT ;
typedef  int /*<<< orphan*/  BSTR ;
typedef  scalar_t__ BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  E_NOTIMPL ; 
 int /*<<< orphan*/  E_OUTOFMEMORY ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  S_OK ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
#define  VT_BSTR 131 
#define  VT_I4 130 
#define  VT_R4 129 
#define  VT_R8 128 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/  const*) ; 
 int FUNC7 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/  const*) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static HRESULT FUNC13(const VARIANT *p, nsAString *nsstr)
{
    BSTR str;
    BOOL ret;
    HRESULT hres;

    switch(FUNC7(p)) {
    case VT_BSTR:
        return FUNC12(nsstr, FUNC3(p))?
            S_OK : E_OUTOFMEMORY;
    case VT_R8:
        hres = FUNC10(FUNC6(p), 0, 0, &str);
        break;
    case VT_R4:
        hres = FUNC9(FUNC5(p), 0, 0, &str);
        break;
    case VT_I4:
        hres = FUNC8(FUNC4(p), 0, 0, &str);
        break;
    default:
        FUNC1("unsupported arg %s\n", FUNC11(p));
        return E_NOTIMPL;
    }
    if (FUNC0(hres))
        return hres;

    ret = FUNC12(nsstr, str);
    FUNC2(str);
    return ret ? S_OK : E_OUTOFMEMORY;
}