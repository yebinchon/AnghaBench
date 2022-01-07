
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char WCHAR ;
typedef int IXmlWriter ;
typedef int IStream ;
typedef scalar_t__ HRESULT ;


 scalar_t__ CreateXmlWriter (int *,void**,int *) ;
 scalar_t__ E_UNEXPECTED ;
 int IID_IXmlWriter ;
 int IStream_Release (int *) ;
 int IXmlWriter_Release (int *) ;
 scalar_t__ IXmlWriter_WriteAttributeString (int *,int *,char const*,int *,char const*) ;
 scalar_t__ IXmlWriter_WriteCData (int *,char const*) ;
 scalar_t__ IXmlWriter_WriteEndDocument (int *) ;
 scalar_t__ IXmlWriter_WriteEndElement (int *) ;
 scalar_t__ IXmlWriter_WriteFullEndElement (int *) ;
 scalar_t__ IXmlWriter_WriteName (int *,char const*) ;
 scalar_t__ IXmlWriter_WriteNmToken (int *,char const*) ;
 scalar_t__ IXmlWriter_WriteString (int *,char const*) ;
 scalar_t__ S_OK ;
 scalar_t__ WR_E_INVALIDACTION ;
 int check_writer_state (int *,scalar_t__) ;
 int ok (int,char*,scalar_t__) ;
 int * writer_set_output (int *) ;

__attribute__((used)) static void test_writer_state(void)
{
    static const WCHAR aW[] = {'a',0};
    IXmlWriter *writer;
    IStream *stream;
    HRESULT hr;

    hr = CreateXmlWriter(&IID_IXmlWriter, (void**)&writer, ((void*)0));
    ok(hr == S_OK, "Expected S_OK, got %08x\n", hr);


    check_writer_state(writer, E_UNEXPECTED);


    stream = writer_set_output(writer);

    hr = IXmlWriter_WriteEndElement(writer);
    ok(hr == WR_E_INVALIDACTION, "got 0x%08x\n", hr);

    check_writer_state(writer, WR_E_INVALIDACTION);
    IStream_Release(stream);


    stream = writer_set_output(writer);

    hr = IXmlWriter_WriteAttributeString(writer, ((void*)0), aW, ((void*)0), aW);
    ok(hr == WR_E_INVALIDACTION, "got 0x%08x\n", hr);

    check_writer_state(writer, WR_E_INVALIDACTION);
    IStream_Release(stream);


    stream = writer_set_output(writer);

    hr = IXmlWriter_WriteEndDocument(writer);
    ok(hr == WR_E_INVALIDACTION, "got 0x%08x\n", hr);

    check_writer_state(writer, WR_E_INVALIDACTION);
    IStream_Release(stream);


    stream = writer_set_output(writer);

    hr = IXmlWriter_WriteFullEndElement(writer);
    ok(hr == WR_E_INVALIDACTION, "got 0x%08x\n", hr);

    check_writer_state(writer, WR_E_INVALIDACTION);
    IStream_Release(stream);


    stream = writer_set_output(writer);

    hr = IXmlWriter_WriteCData(writer, aW);
    ok(hr == WR_E_INVALIDACTION, "got 0x%08x\n", hr);

    check_writer_state(writer, WR_E_INVALIDACTION);
    IStream_Release(stream);


    stream = writer_set_output(writer);

    hr = IXmlWriter_WriteName(writer, aW);
    ok(hr == WR_E_INVALIDACTION, "got 0x%08x\n", hr);

    check_writer_state(writer, WR_E_INVALIDACTION);
    IStream_Release(stream);


    stream = writer_set_output(writer);

    hr = IXmlWriter_WriteNmToken(writer, aW);
    ok(hr == WR_E_INVALIDACTION, "got 0x%08x\n", hr);

    check_writer_state(writer, WR_E_INVALIDACTION);
    IStream_Release(stream);


    stream = writer_set_output(writer);

    hr = IXmlWriter_WriteString(writer, aW);
    ok(hr == WR_E_INVALIDACTION, "got 0x%08x\n", hr);

    check_writer_state(writer, WR_E_INVALIDACTION);
    IStream_Release(stream);

    IXmlWriter_Release(writer);
}
