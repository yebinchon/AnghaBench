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
typedef  int /*<<< orphan*/  ei ;
typedef  char WCHAR ;
typedef  int /*<<< orphan*/  VARIANT ;
struct TYPE_3__ {int /*<<< orphan*/  parse; } ;
typedef  TYPE_1__ ScriptHost ;
typedef  int /*<<< orphan*/  HTMLInnerWindow ;
typedef  int /*<<< orphan*/  HRESULT ;
typedef  int /*<<< orphan*/  GUID ;
typedef  int /*<<< orphan*/  EXCEPINFO ;

/* Variables and functions */
 int /*<<< orphan*/  CO_E_CLASSSTRING ; 
 int /*<<< orphan*/  E_FAIL ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  SCRIPTTEXT_ISVISIBLE ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,...) ; 
 int /*<<< orphan*/  FUNC5 (char const*,int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 

HRESULT FUNC8(HTMLInnerWindow *window, const WCHAR *code, const WCHAR *lang, VARIANT *ret)
{
    ScriptHost *script_host;
    EXCEPINFO ei;
    GUID guid;
    HRESULT hres;

    static const WCHAR delimW[] = {'"',0};

    if(!FUNC5(lang, &guid)) {
        FUNC4("Could not find script GUID\n");
        return CO_E_CLASSSTRING;
    }

    script_host = FUNC6(window, &guid);
    if(!script_host) {
        FUNC0("No script host\n");
        return E_FAIL;
    }

    if(!script_host->parse) {
        FUNC0("script_host->parse == NULL\n");
        return E_FAIL;
    }

    FUNC7(&ei, 0, sizeof(ei));
    FUNC3(">>>\n");
    hres = FUNC1(script_host->parse, code, NULL, NULL, delimW, 0, 0, SCRIPTTEXT_ISVISIBLE, ret, &ei);
    if(FUNC2(hres))
        FUNC3("<<<\n");
    else
        FUNC4("<<< %08x\n", hres);

    return hres;
}