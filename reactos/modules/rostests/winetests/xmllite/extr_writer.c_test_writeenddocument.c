
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char WCHAR ;
typedef int IXmlWriter ;
typedef int IUnknown ;
typedef int IStream ;
typedef char* HRESULT ;
typedef int HGLOBAL ;


 int CHECK_OUTPUT (int *,char*) ;
 char* CreateXmlWriter (int *,void**,int *) ;
 char* E_UNEXPECTED ;
 char* GetHGlobalFromStream (int *,int *) ;
 char* GlobalLock (int ) ;
 int IID_IXmlWriter ;
 int IStream_Release (int *) ;
 char* IXmlWriter_Flush (int *) ;
 int IXmlWriter_Release (int *) ;
 char* IXmlWriter_SetOutput (int *,int *) ;
 char* IXmlWriter_WriteEndDocument (int *) ;
 char* IXmlWriter_WriteStartDocument (int *,int ) ;
 char* IXmlWriter_WriteStartElement (int *,int *,char const*,int *) ;
 char* S_OK ;
 char* WR_E_INVALIDACTION ;
 int XmlStandalone_Omit ;
 int ok (int,char*,char*) ;
 int * writer_set_output (int *) ;

__attribute__((used)) static void test_writeenddocument(void)
{
    static const WCHAR aW[] = {'a',0};
    static const WCHAR bW[] = {'b',0};
    IXmlWriter *writer;
    IStream *stream;
    HGLOBAL hglobal;
    HRESULT hr;
    char *ptr;

    hr = CreateXmlWriter(&IID_IXmlWriter, (void**)&writer, ((void*)0));
    ok(hr == S_OK, "Expected S_OK, got %08x\n", hr);

    hr = IXmlWriter_WriteEndDocument(writer);
    ok(hr == E_UNEXPECTED, "got 0x%08x\n", hr);

    stream = writer_set_output(writer);


    hr = IXmlWriter_WriteEndDocument(writer);
    ok(hr == WR_E_INVALIDACTION, "got 0x%08x\n", hr);

    hr = IXmlWriter_WriteEndDocument(writer);
    ok(hr == WR_E_INVALIDACTION, "got 0x%08x\n", hr);

    hr = IXmlWriter_WriteStartDocument(writer, XmlStandalone_Omit);
    ok(hr == WR_E_INVALIDACTION, "got 0x%08x\n", hr);

    hr = IXmlWriter_WriteStartElement(writer, ((void*)0), aW, ((void*)0));
    ok(hr == WR_E_INVALIDACTION, "got 0x%08x\n", hr);

    hr = IXmlWriter_SetOutput(writer, (IUnknown*)stream);
    ok(hr == S_OK, "got 0x%08x\n", hr);

    hr = IXmlWriter_WriteStartElement(writer, ((void*)0), aW, ((void*)0));
    ok(hr == S_OK, "got 0x%08x\n", hr);

    hr = IXmlWriter_WriteStartElement(writer, ((void*)0), bW, ((void*)0));
    ok(hr == S_OK, "got 0x%08x\n", hr);

    hr = IXmlWriter_WriteEndDocument(writer);
    ok(hr == S_OK, "got 0x%08x\n", hr);

    hr = GetHGlobalFromStream(stream, &hglobal);
    ok(hr == S_OK, "got 0x%08x\n", hr);

    ptr = GlobalLock(hglobal);
    ok(ptr == ((void*)0), "got %p\n", ptr);


    hr = IXmlWriter_Flush(writer);
    ok(hr == S_OK, "got 0x%08x\n", hr);

    CHECK_OUTPUT(stream, "<a><b /></a>");

    IXmlWriter_Release(writer);
    IStream_Release(stream);
}
