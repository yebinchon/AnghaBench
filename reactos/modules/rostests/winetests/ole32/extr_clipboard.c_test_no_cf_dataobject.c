
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT ;
typedef scalar_t__ HANDLE ;


 int CloseClipboard () ;
 scalar_t__ GetClipboardData (int ) ;
 int OpenClipboard (int *) ;
 int RegisterClipboardFormatA (char*) ;
 int ok (int,char*,scalar_t__) ;

__attribute__((used)) static void test_no_cf_dataobject(void)
{
    UINT cf_dataobject = RegisterClipboardFormatA("DataObject");
    UINT cf_ole_priv_data = RegisterClipboardFormatA("Ole Private Data");
    HANDLE h;
    OpenClipboard(((void*)0));

    h = GetClipboardData(cf_dataobject);
    ok(!h, "got %p\n", h);
    h = GetClipboardData(cf_ole_priv_data);
    ok(!h, "got %p\n", h);

    CloseClipboard();
}
