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
struct TYPE_3__ {int /*<<< orphan*/  url; int /*<<< orphan*/  secmgr; } ;
typedef  TYPE_1__ HTMLOuterWindow ;
typedef  int /*<<< orphan*/  HRESULT ;
typedef  scalar_t__ DWORD ;
typedef  int BOOL ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,scalar_t__) ; 
 int TRUE ; 
 scalar_t__ URLZONE_UNTRUSTED ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static BOOL FUNC5(HTMLOuterWindow *window)
{
    DWORD zone;
    HRESULT hres;

    hres = FUNC1(window->secmgr, window->url, &zone, 0);
    if(FUNC0(hres)) {
        FUNC3("Could not map %s to zone: %08x\n", FUNC4(window->url), hres);
        return TRUE;
    }

    FUNC2("zone %d\n", zone);
    return zone == URLZONE_UNTRUSTED;
}