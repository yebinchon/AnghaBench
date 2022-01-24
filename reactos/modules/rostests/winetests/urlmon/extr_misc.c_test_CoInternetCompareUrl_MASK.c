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

/* Variables and functions */
 scalar_t__ S_FALSE ; 
 scalar_t__ S_OK ; 
 int /*<<< orphan*/  FUNC0 (int,char*,scalar_t__) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  url1 ; 
 int /*<<< orphan*/  url3 ; 

__attribute__((used)) static void FUNC2(void)
{
    HRESULT hres;

    hres = FUNC1(url1, url1, 0);
    FUNC0(hres == S_OK, "CoInternetCompareUrl failed: %08x\n", hres);

    hres = FUNC1(url1, url3, 0);
    FUNC0(hres == S_FALSE, "CoInternetCompareUrl failed: %08x\n", hres);

    hres = FUNC1(url3, url1, 0);
    FUNC0(hres == S_FALSE, "CoInternetCompareUrl failed: %08x\n", hres);
}