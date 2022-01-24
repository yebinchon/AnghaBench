#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ ULONG ;
struct TYPE_3__ {scalar_t__ vt; scalar_t__ dwType; int /*<<< orphan*/  pstrName; } ;
typedef  TYPE_1__ PROPBAG2 ;
typedef  int /*<<< orphan*/  IPropertyBag2 ;
typedef  scalar_t__ HRESULT ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,scalar_t__,scalar_t__,TYPE_1__*,scalar_t__*) ; 
 scalar_t__ PROPBAG2_TYPE_DATA ; 
 scalar_t__ S_OK ; 
 scalar_t__ VT_R4 ; 
 scalar_t__ VT_UI1 ; 
 scalar_t__ WINCODEC_ERR_VALUEOUTOFRANGE ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int,char*,scalar_t__,...) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  wszTestProperty1 ; 
 int /*<<< orphan*/  wszTestProperty2 ; 

__attribute__((used)) static void FUNC6(IPropertyBag2 *property, ULONG expected_count)
{
    HRESULT hr;
    PROPBAG2 pb[2];
    ULONG out_count;

    /* iProperty: Out of bounce */
    hr = FUNC2(property, expected_count, 1, pb, &out_count);
    FUNC4(hr == WINCODEC_ERR_VALUEOUTOFRANGE,
       "GetPropertyInfo handled iProperty out of bounce wrong, hr=%x\n", hr);

    /* cProperty: Out of bounce */
    hr = FUNC2(property, 0, expected_count+1, pb, &out_count);
    FUNC4(hr == WINCODEC_ERR_VALUEOUTOFRANGE,
       "GetPropertyInfo handled cProperty out of bounce wrong, hr=%x\n", hr);

    /* GetPropertyInfo can be called for zero items on Windows 8 but not on Windows 7 (wine behaves like Win8) */
    if (expected_count == 0)
        return;

    hr = FUNC2(property, 0, expected_count, pb, &out_count);
    FUNC4(hr == S_OK, "GetPropertyInfo failed, hr=%x\n", hr);
    if (FUNC1(hr))
        return;

    FUNC4(expected_count == out_count,
       "GetPropertyInfo returned unexpected property count, %i != %i)\n",
       expected_count, out_count);

    if(expected_count != 2)
        return;

    FUNC4(pb[0].vt == VT_UI1, "Invalid variant type, pb[0].vt=%x\n", pb[0].vt);
    FUNC4(pb[0].dwType == PROPBAG2_TYPE_DATA, "Invalid variant type, pb[0].dwType=%x\n", pb[0].dwType);
    FUNC4(FUNC3(pb[0].pstrName, wszTestProperty1) == 0, "Invalid property name, pb[0].pstrName=%s\n", FUNC5(pb[0].pstrName));
    FUNC0(pb[0].pstrName);

    FUNC4(pb[1].vt == VT_R4, "Invalid variant type, pb[1].vt=%x\n", pb[1].vt);
    FUNC4(pb[1].dwType == PROPBAG2_TYPE_DATA, "Invalid variant type, pb[1].dwType=%x\n", pb[1].dwType);
    FUNC4(FUNC3(pb[1].pstrName, wszTestProperty2) == 0, "Invalid property name, pb[1].pstrName=%s\n", FUNC5(pb[1].pstrName));
    FUNC0(pb[1].pstrName);
}