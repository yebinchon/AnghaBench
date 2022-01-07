
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ XmlNodeType ;
typedef int IXmlReader ;
typedef scalar_t__ HRESULT ;


 scalar_t__ CreateXmlReader (int *,void**,int *) ;
 int FALSE ;
 int IID_IXmlReader ;
 scalar_t__ IXmlReader_Read (int *,scalar_t__*) ;
 int IXmlReader_Release (int *) ;
 scalar_t__ IXmlReader_SetInput (int *,int *) ;
 scalar_t__ S_FALSE ;
 scalar_t__ S_OK ;
 int TRUE ;
 scalar_t__ WC_E_SYNTAX ;
 scalar_t__ XmlNodeType_Element ;
 scalar_t__ XmlNodeType_None ;
 int ok (int,char*,scalar_t__) ;
 int set_input_string (int *,char*) ;
 int test_eof_state (int *,int ) ;

__attribute__((used)) static void test_endoffile(void)
{
    IXmlReader *reader;
    XmlNodeType type;
    HRESULT hr;

    hr = CreateXmlReader(&IID_IXmlReader, (void **)&reader, ((void*)0));
    ok(hr == S_OK, "S_OK, got %08x\n", hr);

    test_eof_state(reader, FALSE);

    set_input_string(reader, "<a/>");

    test_eof_state(reader, FALSE);

    type = XmlNodeType_None;
    hr = IXmlReader_Read(reader, &type);
    ok(hr == S_OK, "got %#x\n", hr);
    ok(type == XmlNodeType_Element, "Unexpected type %d\n", type);

    test_eof_state(reader, FALSE);

    type = XmlNodeType_Element;
    hr = IXmlReader_Read(reader, &type);
    ok(hr == S_FALSE, "got %#x\n", hr);
    ok(type == XmlNodeType_None, "Unexpected type %d\n", type);

    test_eof_state(reader, TRUE);

    hr = IXmlReader_SetInput(reader, ((void*)0));
    ok(hr == S_OK, "got %08x\n", hr);

    test_eof_state(reader, FALSE);

    IXmlReader_Release(reader);

    hr = CreateXmlReader(&IID_IXmlReader, (void **)&reader, ((void*)0));
    ok(hr == S_OK, "S_OK, got %08x\n", hr);

    set_input_string(reader, "<a/>text");

    type = XmlNodeType_None;
    hr = IXmlReader_Read(reader, &type);
    ok(hr == S_OK, "got %#x\n", hr);
    ok(type == XmlNodeType_Element, "Unexpected type %d\n", type);

    test_eof_state(reader, FALSE);

    type = XmlNodeType_Element;
    hr = IXmlReader_Read(reader, &type);
    ok(hr == WC_E_SYNTAX, "got %#x\n", hr);
    ok(type == XmlNodeType_None, "Unexpected type %d\n", type);

    test_eof_state(reader, FALSE);

    hr = IXmlReader_SetInput(reader, ((void*)0));
    ok(hr == S_OK, "got %08x\n", hr);

    IXmlReader_Release(reader);
}
