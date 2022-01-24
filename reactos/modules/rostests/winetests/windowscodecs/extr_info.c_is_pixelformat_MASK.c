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
typedef  scalar_t__ WICComponentType ;
typedef  int /*<<< orphan*/  IWICComponentInfo ;
typedef  int /*<<< orphan*/  HRESULT ;
typedef  int /*<<< orphan*/  GUID ;
typedef  int BOOL ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FALSE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ WICPixelFormat ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 

__attribute__((used)) static BOOL FUNC5(GUID *format)
{
    IWICComponentInfo *info;
    HRESULT hr;
    WICComponentType componenttype;

    hr = FUNC4(format, &info);
    if (FUNC0(hr))
        return FALSE;

    hr = FUNC1(info, &componenttype);

    FUNC2(info);

    return FUNC3(hr) && componenttype == WICPixelFormat;
}