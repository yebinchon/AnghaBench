
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int ULONG ;
struct TYPE_3__ {int wCode; int wReserved; int dwHelpContext; int scode; int * bstrHelpFile; int * bstrDescription; int * bstrSource; int * pfnDeferredFillIn; int * pvReserved; } ;
typedef int SCODE ;
typedef int LONG ;
typedef int IActiveScriptError ;
typedef int HRESULT ;
typedef TYPE_1__ EXCEPINFO ;
typedef int DWORD ;
typedef int * BSTR ;


 int E_FAIL ;
 int E_POINTER ;
 int IActiveScriptError_GetExceptionInfo (int *,TYPE_1__*) ;
 int IActiveScriptError_GetSourceLineText (int *,int **) ;
 int IActiveScriptError_GetSourcePosition (int *,int*,int*,int*) ;
 int S_OK ;
 int SysFreeString (int *) ;
 int is_lang_english () ;
 int lstrcmpW (int *,int *) ;
 int ok (int,char*,int,...) ;
 int skip (char*) ;
 int wine_dbgstr_w (int *) ;

__attribute__((used)) static void test_IActiveScriptError(IActiveScriptError *error, SCODE errorcode, ULONG line, LONG pos, BSTR script_source, BSTR description, BSTR line_text)
{
    HRESULT hres;
    DWORD source_context;
    ULONG line_number;
    LONG char_position;
    BSTR linetext;
    EXCEPINFO excep;



    hres = IActiveScriptError_GetSourcePosition(error, ((void*)0), ((void*)0), ((void*)0));
    ok(hres == S_OK, "IActiveScriptError_GetSourcePosition -- hres: expected S_OK, got 0x%08x\n", hres);

    source_context = 0xdeadbeef;
    hres = IActiveScriptError_GetSourcePosition(error, &source_context, ((void*)0), ((void*)0));
    ok(hres == S_OK, "IActiveScriptError_GetSourcePosition -- hres: expected S_OK, got 0x%08x\n", hres);
    ok(source_context == 0, "IActiveScriptError_GetSourcePosition -- source_context: expected 0, got 0x%08x\n", source_context);

    line_number = 0xdeadbeef;
    hres = IActiveScriptError_GetSourcePosition(error, ((void*)0), &line_number, ((void*)0));
    ok(hres == S_OK, "IActiveScriptError_GetSourcePosition -- hres: expected S_OK, got 0x%08x\n", hres);
    ok(line_number == line, "IActiveScriptError_GetSourcePosition -- line_number: expected %d, got %d\n", line, line_number);

    char_position = 0xdeadbeef;
    hres = IActiveScriptError_GetSourcePosition(error, ((void*)0), ((void*)0), &char_position);
    ok(hres == S_OK, "IActiveScriptError_GetSourcePosition -- hres: expected S_OK, got 0x%08x\n", hres);
    ok(char_position == pos, "IActiveScriptError_GetSourcePosition -- char_position: expected %d, got %d\n", pos, char_position);



    hres = IActiveScriptError_GetSourceLineText(error, ((void*)0));
    ok(hres == E_POINTER, "IActiveScriptError_GetSourceLineText -- hres: expected E_POINTER, got 0x%08x\n", hres);

    linetext = ((void*)0);
    hres = IActiveScriptError_GetSourceLineText(error, &linetext);
    if (line_text) {
        ok(hres == S_OK, "IActiveScriptError_GetSourceLineText -- hres: expected S_OK, got 0x%08x\n", hres);
        ok(linetext != ((void*)0) && !lstrcmpW(linetext, line_text),
           "IActiveScriptError_GetSourceLineText -- expected %s, got %s\n", wine_dbgstr_w(line_text), wine_dbgstr_w(linetext));
    } else {
        ok(hres == E_FAIL, "IActiveScriptError_GetSourceLineText -- hres: expected S_OK, got 0x%08x\n", hres);
        ok(linetext == ((void*)0),
           "IActiveScriptError_GetSourceLineText -- expected NULL, got %s\n", wine_dbgstr_w(linetext));
    }
    SysFreeString(linetext);



    hres = IActiveScriptError_GetExceptionInfo(error, ((void*)0));
    ok(hres == E_POINTER, "IActiveScriptError_GetExceptionInfo -- hres: expected E_POINTER, got 0x%08x\n", hres);

    excep.wCode = 0xdead;
    excep.wReserved = 0xdead;
    excep.bstrSource = (BSTR)0xdeadbeef;
    excep.bstrDescription = (BSTR)0xdeadbeef;
    excep.bstrHelpFile = (BSTR)0xdeadbeef;
    excep.dwHelpContext = 0xdeadbeef;
    excep.pvReserved = (void *)0xdeadbeef;
    excep.pfnDeferredFillIn = (void *)0xdeadbeef;
    excep.scode = 0xdeadbeef;

    hres = IActiveScriptError_GetExceptionInfo(error, &excep);
    ok(hres == S_OK, "IActiveScriptError_GetExceptionInfo -- hres: expected S_OK, got 0x%08x\n", hres);

    ok(excep.wCode == 0, "IActiveScriptError_GetExceptionInfo -- excep.wCode: expected 0, got 0x%08x\n", excep.wCode);
    ok(excep.wReserved == 0, "IActiveScriptError_GetExceptionInfo -- excep.wReserved: expected 0, got %d\n", excep.wReserved);
    if (!is_lang_english())
        skip("Non-english UI (test with hardcoded strings)\n");
    else {
        ok(excep.bstrSource != ((void*)0) && !lstrcmpW(excep.bstrSource, script_source),
           "IActiveScriptError_GetExceptionInfo -- excep.bstrSource is not valid: expected %s, got %s\n",
           wine_dbgstr_w(script_source), wine_dbgstr_w(excep.bstrSource));
        ok(excep.bstrDescription != ((void*)0) && !lstrcmpW(excep.bstrDescription, description),
           "IActiveScriptError_GetExceptionInfo -- excep.bstrDescription is not valid: got %s\n", wine_dbgstr_w(excep.bstrDescription));
    }
    ok(excep.bstrHelpFile == ((void*)0),
       "IActiveScriptError_GetExceptionInfo -- excep.bstrHelpFile: expected NULL, got %s\n", wine_dbgstr_w(excep.bstrHelpFile));
    ok(excep.dwHelpContext == 0, "IActiveScriptError_GetExceptionInfo -- excep.dwHelpContext: expected 0, got %d\n", excep.dwHelpContext);
    ok(excep.pvReserved == ((void*)0), "IActiveScriptError_GetExceptionInfo -- excep.pvReserved: expected NULL, got %p\n", excep.pvReserved);
    ok(excep.pfnDeferredFillIn == ((void*)0), "IActiveScriptError_GetExceptionInfo -- excep.pfnDeferredFillIn: expected NULL, got %p\n", excep.pfnDeferredFillIn);
    ok(excep.scode == errorcode, "IActiveScriptError_GetExceptionInfo -- excep.scode: expected 0x%08x, got 0x%08x\n", errorcode, excep.scode);

    SysFreeString(excep.bstrSource);
    SysFreeString(excep.bstrDescription);
    SysFreeString(excep.bstrHelpFile);
}
