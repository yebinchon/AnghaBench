
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
 scalar_t__ IXmlWriter_WriteCharEntity (int *,int) ;
 scalar_t__ IXmlWriter_WriteEndDocument (int *) ;
 scalar_t__ IXmlWriter_WriteStartDocument (int *,int ) ;
 scalar_t__ IXmlWriter_WriteStartElement (int *,int *,char const*,int *) ;
 scalar_t__ S_OK ;
 int XmlStandalone_Omit ;
 int XmlWriterProperty_OmitXmlDeclaration ;
 int ok (int,char*,scalar_t__) ;
 int * writer_set_output (int *) ;
 int writer_set_property (int *,int ) ;

__attribute__((used)) static void test_WriteCharEntity(void)
{
    static const WCHAR aW[] = {'a',0};
    IXmlWriter *writer;
    IStream *stream;
    HRESULT hr;

    hr = CreateXmlWriter(&IID_IXmlWriter, (void**)&writer, ((void*)0));
    ok(hr == S_OK, "Expected S_OK, got %08x\n", hr);


    stream = writer_set_output(writer);

    writer_set_property(writer, XmlWriterProperty_OmitXmlDeclaration);

    hr = IXmlWriter_WriteStartDocument(writer, XmlStandalone_Omit);
    ok(hr == S_OK, "got 0x%08x\n", hr);

    hr = IXmlWriter_WriteStartElement(writer, ((void*)0), aW, ((void*)0));
    ok(hr == S_OK, "got 0x%08x\n", hr);

    hr = IXmlWriter_WriteCharEntity(writer, 0x100);
    ok(hr == S_OK, "got 0x%08x\n", hr);

    hr = IXmlWriter_WriteStartElement(writer, ((void*)0), aW, ((void*)0));
    ok(hr == S_OK, "got 0x%08x\n", hr);

    hr = IXmlWriter_WriteEndDocument(writer);
    ok(hr == S_OK, "got 0x%08x\n", hr);

    hr = IXmlWriter_Flush(writer);
    ok(hr == S_OK, "got 0x%08x\n", hr);

    CHECK_OUTPUT(stream,
        "<a>&#x100;<a /></a>");

    IXmlWriter_Release(writer);
    IStream_Release(stream);
}
