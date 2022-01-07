
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char WCHAR ;
typedef int ITextServices ;
typedef int ITextHost ;
typedef int HRESULT ;
typedef int BSTR ;


 int ITextHost_Release (int *) ;
 int ITextServices_Release (int *) ;
 int ITextServices_TxGetText (int *,int *) ;
 int ITextServices_TxSetText (int *,char*) ;
 int S_OK ;
 int SysFreeString (int ) ;
 int SysStringByteLen (int ) ;
 int SysStringLen (int ) ;
 int init_texthost (int **,int **) ;
 scalar_t__ memcmp (int ,char*,int ) ;
 int ok (int,char*,...) ;

__attribute__((used)) static void test_TxSetText(void)
{
    ITextServices *txtserv;
    ITextHost *host;
    HRESULT hres;
    BSTR rettext;
    WCHAR settext[] = {'T','e','s','t',0};

    if (!init_texthost(&txtserv, &host))
        return;

    hres = ITextServices_TxSetText(txtserv, settext);
    ok(hres == S_OK, "ITextServices_TxSetText failed (result = %x)\n", hres);

    hres = ITextServices_TxGetText(txtserv, &rettext);
    ok(hres == S_OK, "ITextServices_TxGetText failed (result = %x)\n", hres);

    ok(SysStringLen(rettext) == 4,
                 "String returned of wrong length (expected 4, got %d)\n", SysStringLen(rettext));
    ok(memcmp(rettext,settext,SysStringByteLen(rettext)) == 0,
                 "String returned differs\n");



    hres = ITextServices_TxSetText(txtserv, 0);
    ok(hres == S_OK, "ITextServices_TxSetText failed (result = %x)\n", hres);

    hres = ITextServices_TxGetText(txtserv, &rettext);
    ok(hres == S_OK, "ITextServices_TxGetText failed (result = %x)\n", hres);
    ok(SysStringLen(rettext) == 0,
                 "String returned of wrong length (expected 0, got %d)\n", SysStringLen(rettext));

    SysFreeString(rettext);
    ITextServices_Release(txtserv);
    ITextHost_Release(host);
}
