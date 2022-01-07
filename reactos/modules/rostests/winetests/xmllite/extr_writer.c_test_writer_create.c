
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ LONG_PTR ;
typedef int IXmlWriter ;
typedef int IUnknown ;
typedef scalar_t__ HRESULT ;


 scalar_t__ CreateXmlWriter (int *,void**,int *) ;
 scalar_t__ E_NOINTERFACE ;
 scalar_t__ FALSE ;
 int IID_IStream ;
 int IID_IUnknown ;
 int IID_IXmlWriter ;
 scalar_t__ IUnknown_QueryInterface (int *,int *,void**) ;
 int IUnknown_Release (int *) ;
 scalar_t__ IXmlWriter_GetProperty (int *,int ,scalar_t__*) ;
 int IXmlWriter_Release (int *) ;
 scalar_t__ S_OK ;
 scalar_t__ TRUE ;
 scalar_t__ XmlConformanceLevel_Auto ;
 scalar_t__ XmlConformanceLevel_Document ;
 int XmlWriterProperty_ByteOrderMark ;
 int XmlWriterProperty_ConformanceLevel ;
 int XmlWriterProperty_Indent ;
 int XmlWriterProperty_OmitXmlDeclaration ;
 int ok (int,char*,...) ;

__attribute__((used)) static void test_writer_create(void)
{
    HRESULT hr;
    IXmlWriter *writer;
    LONG_PTR value;
    IUnknown *unk;


    if (0)
    {
        CreateXmlWriter(&IID_IXmlWriter, ((void*)0), ((void*)0));
        CreateXmlWriter(((void*)0), (void**)&writer, ((void*)0));
    }

    hr = CreateXmlWriter(&IID_IStream, (void **)&unk, ((void*)0));
    ok(hr == E_NOINTERFACE, "got %08x\n", hr);

    hr = CreateXmlWriter(&IID_IUnknown, (void **)&unk, ((void*)0));
    ok(hr == S_OK, "Expected S_OK, got %08x\n", hr);
    hr = IUnknown_QueryInterface(unk, &IID_IXmlWriter, (void **)&writer);
    ok(hr == S_OK, "Expected S_OK, got %08x\n", hr);
    ok(unk == (IUnknown *)writer, "unexpected interface pointer\n");
    IUnknown_Release(unk);
    IXmlWriter_Release(writer);

    hr = CreateXmlWriter(&IID_IXmlWriter, (void**)&writer, ((void*)0));
    ok(hr == S_OK, "Expected S_OK, got %08x\n", hr);


    value = 0;
    hr = IXmlWriter_GetProperty(writer, XmlWriterProperty_ByteOrderMark, &value);
    ok(hr == S_OK, "Expected S_OK, got %08x\n", hr);
    ok(value == TRUE, "got %ld\n", value);

    value = TRUE;
    hr = IXmlWriter_GetProperty(writer, XmlWriterProperty_Indent, &value);
    ok(hr == S_OK, "Expected S_OK, got %08x\n", hr);
    ok(value == FALSE, "got %ld\n", value);

    value = TRUE;
    hr = IXmlWriter_GetProperty(writer, XmlWriterProperty_OmitXmlDeclaration, &value);
    ok(hr == S_OK, "Expected S_OK, got %08x\n", hr);
    ok(value == FALSE, "got %ld\n", value);

    value = XmlConformanceLevel_Auto;
    hr = IXmlWriter_GetProperty(writer, XmlWriterProperty_ConformanceLevel, &value);
    ok(hr == S_OK, "Expected S_OK, got %08x\n", hr);
    ok(value == XmlConformanceLevel_Document, "got %ld\n", value);

    IXmlWriter_Release(writer);
}
