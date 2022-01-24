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
typedef  int ULONG ;
struct TYPE_3__ {int wCode; int wReserved; int dwHelpContext; int scode; int /*<<< orphan*/ * bstrHelpFile; int /*<<< orphan*/ * bstrDescription; int /*<<< orphan*/ * bstrSource; int /*<<< orphan*/ * pfnDeferredFillIn; int /*<<< orphan*/ * pvReserved; } ;
typedef  int SCODE ;
typedef  int LONG ;
typedef  int /*<<< orphan*/  IActiveScriptError ;
typedef  int /*<<< orphan*/  HRESULT ;
typedef  TYPE_1__ EXCEPINFO ;
typedef  int DWORD ;
typedef  int /*<<< orphan*/ * BSTR ;

/* Variables and functions */
 int /*<<< orphan*/  E_FAIL ; 
 int /*<<< orphan*/  E_POINTER ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int*,int*,int*) ; 
 int /*<<< orphan*/  S_OK ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int,char*,int,...) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC9(IActiveScriptError *error, SCODE errorcode, ULONG line, LONG pos, BSTR script_source, BSTR description, BSTR line_text)
{
    HRESULT hres;
    DWORD source_context;
    ULONG line_number;
    LONG char_position;
    BSTR linetext;
    EXCEPINFO excep;

    /* IActiveScriptError_GetSourcePosition */

    hres = FUNC2(error, NULL, NULL, NULL);
    FUNC6(hres == S_OK, "IActiveScriptError_GetSourcePosition -- hres: expected S_OK, got 0x%08x\n", hres);

    source_context = 0xdeadbeef;
    hres = FUNC2(error, &source_context, NULL, NULL);
    FUNC6(hres == S_OK, "IActiveScriptError_GetSourcePosition -- hres: expected S_OK, got 0x%08x\n", hres);
    FUNC6(source_context == 0, "IActiveScriptError_GetSourcePosition -- source_context: expected 0, got 0x%08x\n", source_context);

    line_number = 0xdeadbeef;
    hres = FUNC2(error, NULL, &line_number, NULL);
    FUNC6(hres == S_OK, "IActiveScriptError_GetSourcePosition -- hres: expected S_OK, got 0x%08x\n", hres);
    FUNC6(line_number == line, "IActiveScriptError_GetSourcePosition -- line_number: expected %d, got %d\n", line, line_number);

    char_position = 0xdeadbeef;
    hres = FUNC2(error, NULL, NULL, &char_position);
    FUNC6(hres == S_OK, "IActiveScriptError_GetSourcePosition -- hres: expected S_OK, got 0x%08x\n", hres);
    FUNC6(char_position == pos, "IActiveScriptError_GetSourcePosition -- char_position: expected %d, got %d\n", pos, char_position);

    /* IActiveScriptError_GetSourceLineText */

    hres = FUNC1(error, NULL);
    FUNC6(hres == E_POINTER, "IActiveScriptError_GetSourceLineText -- hres: expected E_POINTER, got 0x%08x\n", hres);

    linetext = NULL;
    hres = FUNC1(error, &linetext);
    if (line_text) {
        FUNC6(hres == S_OK, "IActiveScriptError_GetSourceLineText -- hres: expected S_OK, got 0x%08x\n", hres);
        FUNC6(linetext != NULL && !FUNC5(linetext, line_text),
           "IActiveScriptError_GetSourceLineText -- expected %s, got %s\n", FUNC8(line_text), FUNC8(linetext));
    } else {
        FUNC6(hres == E_FAIL, "IActiveScriptError_GetSourceLineText -- hres: expected S_OK, got 0x%08x\n", hres);
        FUNC6(linetext == NULL,
           "IActiveScriptError_GetSourceLineText -- expected NULL, got %s\n", FUNC8(linetext));
    }
    FUNC3(linetext);

    /* IActiveScriptError_GetExceptionInfo */

    hres = FUNC0(error, NULL);
    FUNC6(hres == E_POINTER, "IActiveScriptError_GetExceptionInfo -- hres: expected E_POINTER, got 0x%08x\n", hres);

    excep.wCode = 0xdead;
    excep.wReserved = 0xdead;
    excep.bstrSource = (BSTR)0xdeadbeef;
    excep.bstrDescription = (BSTR)0xdeadbeef;
    excep.bstrHelpFile = (BSTR)0xdeadbeef;
    excep.dwHelpContext = 0xdeadbeef;
    excep.pvReserved = (void *)0xdeadbeef;
    excep.pfnDeferredFillIn = (void *)0xdeadbeef;
    excep.scode = 0xdeadbeef;

    hres = FUNC0(error, &excep);
    FUNC6(hres == S_OK, "IActiveScriptError_GetExceptionInfo -- hres: expected S_OK, got 0x%08x\n", hres);

    FUNC6(excep.wCode == 0, "IActiveScriptError_GetExceptionInfo -- excep.wCode: expected 0, got 0x%08x\n", excep.wCode);
    FUNC6(excep.wReserved == 0, "IActiveScriptError_GetExceptionInfo -- excep.wReserved: expected 0, got %d\n", excep.wReserved);
    if (!FUNC4())
        FUNC7("Non-english UI (test with hardcoded strings)\n");
    else {
        FUNC6(excep.bstrSource != NULL && !FUNC5(excep.bstrSource, script_source),
           "IActiveScriptError_GetExceptionInfo -- excep.bstrSource is not valid: expected %s, got %s\n",
           FUNC8(script_source), FUNC8(excep.bstrSource));
        FUNC6(excep.bstrDescription != NULL && !FUNC5(excep.bstrDescription, description),
           "IActiveScriptError_GetExceptionInfo -- excep.bstrDescription is not valid: got %s\n", FUNC8(excep.bstrDescription));
    }
    FUNC6(excep.bstrHelpFile == NULL,
       "IActiveScriptError_GetExceptionInfo -- excep.bstrHelpFile: expected NULL, got %s\n", FUNC8(excep.bstrHelpFile));
    FUNC6(excep.dwHelpContext == 0, "IActiveScriptError_GetExceptionInfo -- excep.dwHelpContext: expected 0, got %d\n", excep.dwHelpContext);
    FUNC6(excep.pvReserved == NULL, "IActiveScriptError_GetExceptionInfo -- excep.pvReserved: expected NULL, got %p\n", *excep.pvReserved);
    FUNC6(excep.pfnDeferredFillIn == NULL, "IActiveScriptError_GetExceptionInfo -- excep.pfnDeferredFillIn: expected NULL, got %p\n", *excep.pfnDeferredFillIn);
    FUNC6(excep.scode == errorcode, "IActiveScriptError_GetExceptionInfo -- excep.scode: expected 0x%08x, got 0x%08x\n", errorcode, excep.scode);

    FUNC3(excep.bstrSource);
    FUNC3(excep.bstrDescription);
    FUNC3(excep.bstrHelpFile);
}