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
typedef  int /*<<< orphan*/  IActiveScriptParse ;
typedef  scalar_t__ HRESULT ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,void**) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IID_IVariantChangeType ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ S_OK ; 
 int /*<<< orphan*/ * FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  script_change_type ; 
 int /*<<< orphan*/  stored_obj ; 
 int /*<<< orphan*/  testArgConv ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC10(void)
{
    IActiveScriptParse *parser;
    HRESULT hres;

    parser = FUNC6();

    hres = FUNC1(parser, &IID_IVariantChangeType, (void**)&script_change_type);
    FUNC7(hres == S_OK, "Could not get IVariantChangeType iface: %08x\n", hres);

    FUNC5(testArgConv);
    FUNC8(parser,
                   "var obj = {"
                   "    toString: function() { return 'strval'; },"
                   "    valueOf: function()  { return 10; }"
                   "};"
                   "testArgConv(obj);");
    FUNC0(testArgConv);

    FUNC9(script_change_type, stored_obj);
    FUNC3(stored_obj);
    FUNC4(script_change_type);

    FUNC2(parser);
}