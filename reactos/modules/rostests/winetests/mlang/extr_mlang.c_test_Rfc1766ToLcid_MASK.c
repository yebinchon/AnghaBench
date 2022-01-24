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
struct TYPE_3__ {char* rfc1766; int broken_lcid; int lcid; int /*<<< orphan*/  hr; } ;
typedef  int LCID ;
typedef  int /*<<< orphan*/  HRESULT ;
typedef  size_t DWORD ;

/* Variables and functions */
 size_t FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  E_INVALIDARG ; 
 int /*<<< orphan*/  S_FALSE ; 
 scalar_t__ FUNC1 (int) ; 
 TYPE_1__* lcid_table ; 
 int /*<<< orphan*/  FUNC2 (int,char*,size_t,...) ; 
 int /*<<< orphan*/  FUNC3 (int*,char*) ; 

__attribute__((used)) static void FUNC4(void)
{
    LCID lcid;
    HRESULT ret;
    DWORD i;

    for(i = 0; i < FUNC0(lcid_table); i++) {
        lcid = -1;
        ret = FUNC3(&lcid, lcid_table[i].rfc1766);

        /* IE <6.0 guess 0x412 (ko) from "kok" */
        FUNC2( (ret == lcid_table[i].hr) ||
            FUNC1(lcid_table[i].broken_lcid && (ret == S_FALSE)),
            "#%02d: HRESULT 0x%x (expected 0x%x)\n", i, ret, lcid_table[i].hr);

        FUNC2( (lcid == lcid_table[i].lcid) ||
            FUNC1(lcid == lcid_table[i].broken_lcid),  /* IE <6.0 */
            "#%02d: got LCID 0x%x (expected 0x%x)\n", i, lcid, lcid_table[i].lcid);
    }

    ret = FUNC3(&lcid, NULL);
    FUNC2(ret == E_INVALIDARG, "got 0x%08x (expected E_INVALIDARG)\n", ret);

    ret = FUNC3(NULL, "en");
    FUNC2(ret == E_INVALIDARG, "got 0x%08x (expected E_INVALIDARG)\n", ret);
}