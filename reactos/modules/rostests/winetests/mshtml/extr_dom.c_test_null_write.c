
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int IHTMLDocument2 ;
typedef scalar_t__ HRESULT ;


 int FALSE ;
 scalar_t__ IHTMLDocument2_write (int *,int *) ;
 scalar_t__ IHTMLDocument2_writeln (int *,int *) ;
 scalar_t__ S_OK ;
 int TRUE ;
 int doc_write (int *,int ,int *) ;
 int ok (int,char*,scalar_t__) ;

__attribute__((used)) static void test_null_write(IHTMLDocument2 *doc)
{
    HRESULT hres;

    doc_write(doc, FALSE, ((void*)0));
    doc_write(doc, TRUE, ((void*)0));

    hres = IHTMLDocument2_write(doc, ((void*)0));
    ok(hres == S_OK,
       "Expected IHTMLDocument2::write to return S_OK, got 0x%08x\n", hres);

    hres = IHTMLDocument2_writeln(doc, ((void*)0));
    ok(hres == S_OK,
       "Expected IHTMLDocument2::writeln to return S_OK, got 0x%08x\n", hres);
}
