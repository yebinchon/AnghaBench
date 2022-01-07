
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int bodyW ;
typedef char WCHAR ;
typedef int IXMLDOMProcessingInstruction ;
typedef int IXMLDOMDocument ;
typedef scalar_t__ HRESULT ;
typedef int DWORD ;


 int IID_IXMLDOMDocument ;
 int IXMLDOMDocument_Release (int *) ;
 scalar_t__ IXMLDOMDocument_createProcessingInstruction (int *,int ,char*,int **) ;
 int IXMLDOMProcessingInstruction_Release (int *) ;
 scalar_t__ S_OK ;
 int _bstr_ (char*) ;
 int * create_document (int *) ;
 int memcpy (char*,char const*,int) ;
 int ok (int,char*,scalar_t__) ;

__attribute__((used)) static void test_createProcessingInstruction(void)
{
    static const WCHAR bodyW[] = {'t','e','s','t',0};
    IXMLDOMProcessingInstruction *pi;
    IXMLDOMDocument *doc;
    WCHAR buff[10];
    HRESULT hr;

    doc = create_document(&IID_IXMLDOMDocument);


    memcpy(&buff[2], bodyW, sizeof(bodyW));

    *(DWORD*)buff = 0xf0f0;
    hr = IXMLDOMDocument_createProcessingInstruction(doc, _bstr_("test"), &buff[2], &pi);
    ok(hr == S_OK, "got 0x%08x\n", hr);

    IXMLDOMProcessingInstruction_Release(pi);
    IXMLDOMDocument_Release(doc);
}
