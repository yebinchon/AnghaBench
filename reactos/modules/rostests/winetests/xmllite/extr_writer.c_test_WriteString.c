
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
 scalar_t__ E_UNEXPECTED ;
 int IID_IXmlWriter ;
 int IStream_Release (int *) ;
 scalar_t__ IXmlWriter_Flush (int *) ;
 int IXmlWriter_Release (int *) ;
 scalar_t__ IXmlWriter_WriteStartElement (int *,int *,char const*,int *) ;
 scalar_t__ IXmlWriter_WriteString (int *,char const*) ;
 scalar_t__ S_OK ;
 int XmlWriterProperty_OmitXmlDeclaration ;
 int ok (int,char*,scalar_t__) ;
 int * writer_set_output (int *) ;
 int writer_set_property (int *,int ) ;

__attribute__((used)) static void test_WriteString(void)
{
    static const WCHAR markupW[] = {'<','&','"','>','=',0};
    static const WCHAR aW[] = {'a',0};
    static const WCHAR bW[] = {'b',0};
    static const WCHAR emptyW[] = {0};
    IXmlWriter *writer;
    IStream *stream;
    HRESULT hr;

    hr = CreateXmlWriter(&IID_IXmlWriter, (void**)&writer, ((void*)0));
    ok(hr == S_OK, "Expected S_OK, got %08x\n", hr);

    writer_set_property(writer, XmlWriterProperty_OmitXmlDeclaration);

    hr = IXmlWriter_WriteString(writer, aW);
    ok(hr == E_UNEXPECTED, "got 0x%08x\n", hr);

    hr = IXmlWriter_WriteString(writer, ((void*)0));
    ok(hr == S_OK, "got 0x%08x\n", hr);

    hr = IXmlWriter_WriteString(writer, emptyW);
    ok(hr == E_UNEXPECTED, "got 0x%08x\n", hr);

    stream = writer_set_output(writer);

    hr = IXmlWriter_WriteStartElement(writer, ((void*)0), bW, ((void*)0));
    ok(hr == S_OK, "got 0x%08x\n", hr);

    hr = IXmlWriter_WriteString(writer, ((void*)0));
    ok(hr == S_OK, "got 0x%08x\n", hr);

    hr = IXmlWriter_WriteString(writer, emptyW);
    ok(hr == S_OK, "got 0x%08x\n", hr);

    hr = IXmlWriter_WriteString(writer, aW);
    ok(hr == S_OK, "got 0x%08x\n", hr);


    hr = IXmlWriter_WriteString(writer, markupW);
    ok(hr == S_OK, "got 0x%08x\n", hr);

    hr = IXmlWriter_Flush(writer);
    ok(hr == S_OK, "got 0x%08x\n", hr);

    CHECK_OUTPUT(stream,
        "<b>a&lt;&amp;\"&gt;=");
    IStream_Release(stream);

    stream = writer_set_output(writer);

    hr = IXmlWriter_WriteStartElement(writer, ((void*)0), bW, ((void*)0));
    ok(hr == S_OK, "got 0x%08x\n", hr);

    hr = IXmlWriter_WriteString(writer, ((void*)0));
    ok(hr == S_OK, "got 0x%08x\n", hr);

    hr = IXmlWriter_Flush(writer);
    ok(hr == S_OK, "got 0x%08x\n", hr);

    CHECK_OUTPUT(stream,
        "<b");

    hr = IXmlWriter_WriteString(writer, emptyW);
    ok(hr == S_OK, "got 0x%08x\n", hr);

    hr = IXmlWriter_Flush(writer);
    ok(hr == S_OK, "got 0x%08x\n", hr);

    CHECK_OUTPUT(stream,
        "<b>");

    IXmlWriter_Release(writer);
    IStream_Release(stream);
}
