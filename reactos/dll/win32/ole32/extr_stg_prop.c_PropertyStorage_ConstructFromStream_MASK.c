#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  IPropertyStorage_iface; } ;
typedef  int /*<<< orphan*/  REFFMTID ;
typedef  TYPE_1__ PropertyStorage_impl ;
typedef  int /*<<< orphan*/  IStream ;
typedef  int /*<<< orphan*/  IPropertyStorage ;
typedef  int /*<<< orphan*/  HRESULT ;
typedef  int /*<<< orphan*/  DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__**) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  S_OK ; 
 int /*<<< orphan*/  FUNC4 (char*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ **) ; 

__attribute__((used)) static HRESULT FUNC6(IStream *stm,
 REFFMTID rfmtid, DWORD grfMode, IPropertyStorage** pps)
{
    PropertyStorage_impl *ps;
    HRESULT hr;

    FUNC5(pps);
    hr = FUNC1(stm, rfmtid, grfMode, &ps);
    if (FUNC3(hr))
    {
        hr = FUNC2(ps);
        if (FUNC3(hr))
        {
            *pps = &ps->IPropertyStorage_iface;
            FUNC4("PropertyStorage %p constructed\n", ps);
            hr = S_OK;
        }
        else FUNC0( &ps->IPropertyStorage_iface );
    }
    return hr;
}