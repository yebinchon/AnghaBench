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
typedef  char WCHAR ;
struct TYPE_3__ {int broken_lcid; int lcid; int /*<<< orphan*/  hr; int /*<<< orphan*/  rfc1766; } ;
typedef  int LCID ;
typedef  int /*<<< orphan*/  IMultiLanguage2 ;
typedef  int /*<<< orphan*/  HRESULT ;
typedef  size_t DWORD ;
typedef  int /*<<< orphan*/  BSTR ;

/* Variables and functions */
 size_t FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  CP_ACP ; 
 int /*<<< orphan*/  E_FAIL ; 
 int /*<<< orphan*/  E_INVALIDARG ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int*,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  MAX_RFC1766_NAME ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  S_FALSE ; 
 int /*<<< orphan*/  S_OK ; 
 scalar_t__ FUNC4 (int) ; 
 TYPE_1__* lcid_table ; 
 int /*<<< orphan*/  FUNC5 (int,char*,size_t,...) ; 
 int /*<<< orphan*/  FUNC6 (char*,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC7(IMultiLanguage2 *iML2)
{
    WCHAR rfc1766W[MAX_RFC1766_NAME + 1];
    LCID lcid;
    HRESULT ret;
    DWORD i;

    static WCHAR en[] = { 'e','n',0 };
    static WCHAR en_them[] = { 'e','n','-','t','h','e','m',0 };
    static WCHAR english[] = { 'e','n','g','l','i','s','h',0 };


    for(i = 0; i < FUNC0(lcid_table); i++) {
        lcid = -1;
        FUNC3(CP_ACP, 0, lcid_table[i].rfc1766, -1, rfc1766W, MAX_RFC1766_NAME);
        ret = FUNC1(iML2, &lcid, rfc1766W);

        /* IE <6.0 guess 0x412 (ko) from "kok" */
        FUNC5((ret == lcid_table[i].hr) ||
            FUNC4(lcid_table[i].broken_lcid && (ret == S_FALSE)),
            "#%02d: HRESULT 0x%x (expected 0x%x)\n", i, ret, lcid_table[i].hr);

        FUNC5((lcid == lcid_table[i].lcid) ||
            FUNC4(lcid == lcid_table[i].broken_lcid),   /* IE <6.0 */
            "#%02d: got LCID 0x%x (expected 0x%x)\n", i, lcid, lcid_table[i].lcid);
    }


    ret = FUNC1(iML2, NULL, en);
    FUNC5(ret == E_INVALIDARG, "GetLcidFromRfc1766 returned: %08x\n", ret);

    ret = FUNC1(iML2, &lcid, NULL);
    FUNC5(ret == E_INVALIDARG, "GetLcidFromRfc1766 returned: %08x\n", ret);

    ret = FUNC1(iML2, &lcid, en_them);
    FUNC5((ret == E_FAIL || ret == S_FALSE), "GetLcidFromRfc1766 returned: %08x\n", ret);
    if (ret == S_FALSE)
    {
        BSTR rfcstr;
        static WCHAR en[] = {'e','n',0};

        ret = FUNC2(iML2, lcid, &rfcstr);
        FUNC5(ret == S_OK, "Expected S_OK, got %08x\n", ret);
        FUNC6("Expected \"%s\",  got \"%s\"n", en, rfcstr);
    }

    ret = FUNC1(iML2, &lcid, english);
    FUNC5((ret == E_FAIL || ret == S_FALSE), "GetLcidFromRfc1766 returned: %08x\n", ret);
    if (ret == S_FALSE)
    {
        BSTR rfcstr;
        static WCHAR en[] = {'e','n',0};

        ret = FUNC2(iML2, lcid, &rfcstr);
        FUNC5(ret == S_OK, "Expected S_OK, got %08x\n", ret);
        FUNC6("Expected \"%s\",  got \"%s\"n", en, rfcstr);
    }

}