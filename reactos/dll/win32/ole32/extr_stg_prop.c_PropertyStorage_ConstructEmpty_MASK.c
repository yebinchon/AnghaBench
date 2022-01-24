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
struct TYPE_4__ {int format; int grfFlags; int /*<<< orphan*/  IPropertyStorage_iface; int /*<<< orphan*/  locale; int /*<<< orphan*/  codePage; } ;
typedef  int /*<<< orphan*/  REFFMTID ;
typedef  TYPE_1__ PropertyStorage_impl ;
typedef  int /*<<< orphan*/  IStream ;
typedef  int /*<<< orphan*/  IPropertyStorage ;
typedef  int /*<<< orphan*/  HRESULT ;
typedef  int DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  CP_UNICODE ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  LOCALE_SYSTEM_DEFAULT ; 
 int PROPSETFLAG_ANSI ; 
 int PROPSETFLAG_CASE_SENSITIVE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,TYPE_1__**) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  S_OK ; 
 int /*<<< orphan*/  FUNC3 (char*,TYPE_1__*,...) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ **) ; 

__attribute__((used)) static HRESULT FUNC5(IStream *stm,
 REFFMTID rfmtid, DWORD grfFlags, DWORD grfMode, IPropertyStorage** pps)
{
    PropertyStorage_impl *ps;
    HRESULT hr;

    FUNC4(pps);
    hr = FUNC1(stm, rfmtid, grfMode, &ps);
    if (FUNC2(hr))
    {
        ps->format = 0;
        ps->grfFlags = grfFlags;
        if (ps->grfFlags & PROPSETFLAG_CASE_SENSITIVE)
            ps->format = 1;
        /* default to Unicode unless told not to, as specified on msdn */
        if (ps->grfFlags & PROPSETFLAG_ANSI)
            ps->codePage = FUNC0();
        else
            ps->codePage = CP_UNICODE;
        ps->locale = LOCALE_SYSTEM_DEFAULT;
        FUNC3("Code page is %d, locale is %d\n", ps->codePage, ps->locale);
        *pps = &ps->IPropertyStorage_iface;
        FUNC3("PropertyStorage %p constructed\n", ps);
        hr = S_OK;
    }
    return hr;
}