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
typedef  int /*<<< orphan*/  excepinfo ;
typedef  int /*<<< orphan*/  VARIANT ;
struct TYPE_3__ {int /*<<< orphan*/  parse; } ;
typedef  TYPE_1__ ScriptHost ;
typedef  int /*<<< orphan*/  LPCWSTR ;
typedef  int /*<<< orphan*/  HTMLScriptElement ;
typedef  int /*<<< orphan*/  HRESULT ;
typedef  int /*<<< orphan*/  EXCEPINFO ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  READYSTATE_INTERACTIVE ; 
 int SCRIPTTEXT_HOSTMANAGESSOURCE ; 
 int SCRIPTTEXT_ISVISIBLE ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  script_endW ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  windowW ; 

__attribute__((used)) static void FUNC8(ScriptHost *script_host, HTMLScriptElement *script_elem, LPCWSTR text)
{
    EXCEPINFO excepinfo;
    VARIANT var;
    HRESULT hres;

    FUNC2("%s\n", FUNC5(text));

    FUNC7(script_elem, READYSTATE_INTERACTIVE);

    FUNC3(&var);
    FUNC6(&excepinfo, 0, sizeof(excepinfo));
    FUNC2(">>>\n");
    hres = FUNC0(script_host->parse, text, windowW, NULL, script_endW,
                                              0, 0, SCRIPTTEXT_ISVISIBLE|SCRIPTTEXT_HOSTMANAGESSOURCE,
                                              &var, &excepinfo);
    if(FUNC1(hres))
        FUNC2("<<<\n");
    else
        FUNC4("<<< %08x\n", hres);

}