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
typedef  int /*<<< orphan*/  IHTMLDocument2 ;

/* Variables and functions */
 int /*<<< orphan*/  AddNamedItem ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  Close ; 
 int /*<<< orphan*/  CreateInstance ; 
 int /*<<< orphan*/  GetInterfaceSafetyOptions ; 
 int /*<<< orphan*/  GetScriptState ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  InitNew ; 
 int /*<<< orphan*/  ParseScriptText_script ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SetInterfaceSafetyOptions ; 
 int /*<<< orphan*/  SetProperty_ABBREVIATE_GLOBALNAME_RESOLUTION ; 
 int /*<<< orphan*/  SetProperty_HACK_TRIDENTEVENTSINK ; 
 int /*<<< orphan*/  SetProperty_INVOKEVERSIONING ; 
 int /*<<< orphan*/  SetScriptSite ; 
 int /*<<< orphan*/  SetScriptState_CONNECTED ; 
 int /*<<< orphan*/  SetScriptState_DISCONNECTED ; 
 int /*<<< orphan*/  SetScriptState_STARTED ; 
 int /*<<< orphan*/ * FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  simple_script_str ; 
 scalar_t__ site ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,char*,char*) ; 
 scalar_t__ window_dispex ; 

__attribute__((used)) static void FUNC9(void)
{
    IHTMLDocument2 *doc;

    doc = FUNC6();
    if(!doc)
        return;

    FUNC5(CreateInstance);
    FUNC5(GetInterfaceSafetyOptions);
    FUNC5(SetInterfaceSafetyOptions);
    FUNC5(SetProperty_INVOKEVERSIONING); /* IE8 */
    FUNC5(SetProperty_HACK_TRIDENTEVENTSINK);
    FUNC5(InitNew);
    FUNC5(SetScriptSite);
    FUNC5(GetScriptState);
    FUNC5(SetScriptState_STARTED);
    FUNC5(AddNamedItem);
    FUNC5(SetProperty_ABBREVIATE_GLOBALNAME_RESOLUTION); /* IE8 */
    FUNC5(ParseScriptText_script);
    FUNC5(SetScriptState_CONNECTED);

    FUNC7(doc, simple_script_str);

    FUNC0(CreateInstance);
    FUNC0(GetInterfaceSafetyOptions);
    FUNC0(SetInterfaceSafetyOptions);
    FUNC1(SetProperty_INVOKEVERSIONING); /* IE8 */
    FUNC0(SetProperty_HACK_TRIDENTEVENTSINK);
    FUNC0(InitNew);
    FUNC0(SetScriptSite);
    FUNC0(GetScriptState);
    FUNC0(SetScriptState_STARTED);
    FUNC0(AddNamedItem);
    FUNC1(SetProperty_ABBREVIATE_GLOBALNAME_RESOLUTION); /* IE8 */
    FUNC0(ParseScriptText_script);
    FUNC0(SetScriptState_CONNECTED);

    FUNC8(doc, "execScript call", "TestScript");

    if(site)
        FUNC2(site);
    if(window_dispex)
        FUNC3(window_dispex);

    FUNC5(SetScriptState_DISCONNECTED);
    FUNC5(Close);

    FUNC4(doc);

    FUNC0(SetScriptState_DISCONNECTED);
    FUNC0(Close);
}