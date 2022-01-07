
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char WCHAR ;
typedef int IXmlWriter ;
typedef int IStream ;
typedef scalar_t__ HRESULT ;


 int CHECK_OUTPUT (int *,char*) ;
 scalar_t__ CreateXmlWriter (int *,void**,int *) ;
 scalar_t__ E_INVALIDARG ;
 scalar_t__ E_UNEXPECTED ;
 int IID_IXmlWriter ;
 int IStream_Release (int *) ;
 scalar_t__ IXmlWriter_Flush (int *) ;
 int IXmlWriter_Release (int *) ;
 scalar_t__ IXmlWriter_WriteElementString (int *,int *,char const*,int *,char const*) ;
 scalar_t__ IXmlWriter_WriteProcessingInstruction (int *,char const*,char const*) ;
 scalar_t__ IXmlWriter_WriteStartDocument (int *,int ) ;
 scalar_t__ IXmlWriter_WriteStartElement (int *,char const*,char const*,char const*) ;
 scalar_t__ S_OK ;
 scalar_t__ WR_E_INVALIDACTION ;
 int XmlStandalone_Yes ;
 int ok (int,char*,scalar_t__) ;
 int * writer_set_output (int *) ;

__attribute__((used)) static void test_writestartelement(void)
{
    static const WCHAR valueW[] = {'v','a','l','u','e',0};
    static const WCHAR aW[] = {'a',0};
    static const WCHAR bW[] = {'b',0};
    IXmlWriter *writer;
    IStream *stream;
    HRESULT hr;

    hr = CreateXmlWriter(&IID_IXmlWriter, (void**)&writer, ((void*)0));
    ok(hr == S_OK, "Expected S_OK, got %08x\n", hr);

    hr = IXmlWriter_WriteStartElement(writer, ((void*)0), aW, ((void*)0));
    ok(hr == E_UNEXPECTED, "got 0x%08x\n", hr);

    stream = writer_set_output(writer);

    hr = IXmlWriter_WriteStartElement(writer, aW, ((void*)0), ((void*)0));
    ok(hr == E_INVALIDARG, "got 0x%08x\n", hr);

    hr = IXmlWriter_WriteStartElement(writer, ((void*)0), ((void*)0), ((void*)0));
    ok(hr == E_INVALIDARG, "got 0x%08x\n", hr);

    hr = IXmlWriter_WriteStartElement(writer, ((void*)0), ((void*)0), aW);
    ok(hr == E_INVALIDARG, "got 0x%08x\n", hr);

    hr = IXmlWriter_WriteStartElement(writer, ((void*)0), aW, ((void*)0));
    ok(hr == S_OK, "got 0x%08x\n", hr);

    hr = IXmlWriter_WriteStartDocument(writer, XmlStandalone_Yes);
    ok(hr == WR_E_INVALIDACTION, "got 0x%08x\n", hr);

    hr = IXmlWriter_Flush(writer);
    ok(hr == S_OK, "got 0x%08x\n", hr);

    CHECK_OUTPUT(stream, "<a");

    hr = IXmlWriter_WriteStartDocument(writer, XmlStandalone_Yes);
    ok(hr == WR_E_INVALIDACTION, "got 0x%08x\n", hr);

    hr = IXmlWriter_WriteStartElement(writer, ((void*)0), ((void*)0), ((void*)0));
    ok(hr == E_INVALIDARG, "got 0x%08x\n", hr);

    hr = IXmlWriter_WriteProcessingInstruction(writer, aW, aW);
    ok(hr == WR_E_INVALIDACTION, "got 0x%08x\n", hr);

    IStream_Release(stream);
    IXmlWriter_Release(writer);


    hr = CreateXmlWriter(&IID_IXmlWriter, (void**)&writer, ((void*)0));
    ok(hr == S_OK, "Expected S_OK, got %08x\n", hr);

    hr = IXmlWriter_WriteElementString(writer, ((void*)0), bW, ((void*)0), valueW);
    ok(hr == E_UNEXPECTED, "got 0x%08x\n", hr);

    stream = writer_set_output(writer);

    hr = IXmlWriter_WriteStartElement(writer, ((void*)0), aW, ((void*)0));
    ok(hr == S_OK, "got 0x%08x\n", hr);

    hr = IXmlWriter_WriteElementString(writer, ((void*)0), bW, ((void*)0), valueW);
    ok(hr == S_OK, "got 0x%08x\n", hr);

    hr = IXmlWriter_WriteElementString(writer, ((void*)0), bW, ((void*)0), ((void*)0));
    ok(hr == S_OK, "got 0x%08x\n", hr);

    hr = IXmlWriter_Flush(writer);
    ok(hr == S_OK, "got 0x%08x\n", hr);

    CHECK_OUTPUT(stream,
        "<a><b>value</b><b />");

    IStream_Release(stream);
    IXmlWriter_Release(writer);
}
