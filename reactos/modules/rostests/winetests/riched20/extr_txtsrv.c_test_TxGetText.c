
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ITextServices ;
typedef int ITextHost ;
typedef scalar_t__ HRESULT ;
typedef int BSTR ;


 int ITextHost_Release (int *) ;
 int ITextServices_Release (int *) ;
 scalar_t__ ITextServices_TxGetText (int *,int *) ;
 scalar_t__ S_OK ;
 int SysFreeString (int ) ;
 int init_texthost (int **,int **) ;
 int ok (int,char*,scalar_t__) ;

__attribute__((used)) static void test_TxGetText(void)
{
    ITextServices *txtserv;
    ITextHost *host;
    HRESULT hres;
    BSTR rettext;

    if (!init_texthost(&txtserv, &host))
        return;

    hres = ITextServices_TxGetText(txtserv, &rettext);
    ok(hres == S_OK, "ITextServices_TxGetText failed (result = %x)\n", hres);
    SysFreeString(rettext);

    ITextServices_Release(txtserv);
    ITextHost_Release(host);
}
