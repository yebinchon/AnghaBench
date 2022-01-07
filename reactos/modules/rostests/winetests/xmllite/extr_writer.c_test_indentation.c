
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
 int IID_IXmlWriter ;
 int IStream_Release (int *) ;
 scalar_t__ IXmlWriter_Flush (int *) ;
 int IXmlWriter_Release (int *) ;
 scalar_t__ IXmlWriter_WriteComment (int *,char const*) ;
 scalar_t__ IXmlWriter_WriteElementString (int *,int *,char const*,int *,int *) ;
 scalar_t__ IXmlWriter_WriteEndDocument (int *) ;
 scalar_t__ IXmlWriter_WriteEndElement (int *) ;
 scalar_t__ IXmlWriter_WriteStartDocument (int *,int ) ;
 scalar_t__ IXmlWriter_WriteStartElement (int *,int *,char const*,int *) ;
 scalar_t__ S_OK ;
 int XmlStandalone_Omit ;
 int XmlWriterProperty_Indent ;
 int XmlWriterProperty_OmitXmlDeclaration ;
 int ok (int,char*,scalar_t__) ;
 int * writer_set_output (int *) ;
 int writer_set_property (int *,int ) ;

__attribute__((used)) static void test_indentation(void)
{
    static const WCHAR commentW[] = {'c','o','m','m','e','n','t',0};
    static const WCHAR aW[] = {'a',0};
    static const WCHAR bW[] = {'b',0};
    IXmlWriter *writer;
    IStream *stream;
    HRESULT hr;

    hr = CreateXmlWriter(&IID_IXmlWriter, (void**)&writer, ((void*)0));
    ok(hr == S_OK, "Expected S_OK, got %08x\n", hr);

    stream = writer_set_output(writer);

    writer_set_property(writer, XmlWriterProperty_OmitXmlDeclaration);
    writer_set_property(writer, XmlWriterProperty_Indent);

    hr = IXmlWriter_WriteStartDocument(writer, XmlStandalone_Omit);
    ok(hr == S_OK, "got 0x%08x\n", hr);

    hr = IXmlWriter_WriteStartElement(writer, ((void*)0), aW, ((void*)0));
    ok(hr == S_OK, "got 0x%08x\n", hr);

    hr = IXmlWriter_WriteComment(writer, commentW);
    ok(hr == S_OK, "got 0x%08x\n", hr);

    hr = IXmlWriter_WriteStartElement(writer, ((void*)0), bW, ((void*)0));
    ok(hr == S_OK, "got 0x%08x\n", hr);

    hr = IXmlWriter_WriteEndDocument(writer);
    ok(hr == S_OK, "got 0x%08x\n", hr);

    hr = IXmlWriter_Flush(writer);
    ok(hr == S_OK, "got 0x%08x\n", hr);

    CHECK_OUTPUT(stream,
        "<a>\r\n"
        "  <!--comment-->\r\n"
        "  <b />\r\n"
        "</a>");

    IStream_Release(stream);


    stream = writer_set_output(writer);

    hr = IXmlWriter_WriteStartElement(writer, ((void*)0), aW, ((void*)0));
    ok(hr == S_OK, "Unexpected hr %#x.\n", hr);

    hr = IXmlWriter_WriteElementString(writer, ((void*)0), bW, ((void*)0), ((void*)0));
    ok(hr == S_OK, "Unexpected hr %#x.\n", hr);

    hr = IXmlWriter_WriteElementString(writer, ((void*)0), bW, ((void*)0), ((void*)0));
    ok(hr == S_OK, "Unexpected hr %#x.\n", hr);

    hr = IXmlWriter_WriteEndElement(writer);
    ok(hr == S_OK, "Unexpected hr %#x.\n", hr);

    hr = IXmlWriter_Flush(writer);
    ok(hr == S_OK, "Unexpected hr %#x.\n", hr);

    CHECK_OUTPUT(stream,
        "<a>\r\n"
        "  <b />\r\n"
        "  <b />\r\n"
        "</a>");

    IStream_Release(stream);

    IXmlWriter_Release(writer);
}
