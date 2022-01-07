
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int XmlNodeType ;
typedef int UINT ;
typedef int IXmlReader ;
typedef int HRESULT ;


 int CreateXmlReader (int *,void**,int *) ;
 int E_INVALIDARG ;
 int IID_IXmlReader ;
 int IXmlReader_GetLineNumber (int *,int*) ;
 int IXmlReader_GetLinePosition (int *,int*) ;
 int IXmlReader_Read (int *,int*) ;
 int IXmlReader_Release (int *) ;
 int IXmlReader_SetInput (int *,int *) ;
 int S_FALSE ;
 int S_OK ;
 int TEST_READER_POSITION (int *,int ,int ) ;
 int TEST_READER_POSITION2 (int *,int,int,int,int) ;
 int TEST_READER_STATE (int *,int ) ;
 int TEST_READER_STATE2 (int *,int ,int ) ;
 int XmlNodeType_Element ;
 int XmlNodeType_EndElement ;
 int XmlNodeType_Whitespace ;
 int XmlReadState_Closed ;
 int XmlReadState_Initial ;
 int move_to_element (int *) ;
 int next_attribute (int *) ;
 int ok (int,char*,int) ;
 int set_input_string (int *,char const*) ;

__attribute__((used)) static void test_reader_position(void)
{
    static const char *xml = "<c:a xmlns:c=\"nsdef c\" b=\"attr b\">\n</c:a>";
    IXmlReader *reader;
    XmlNodeType type;
    UINT position;
    HRESULT hr;

    hr = CreateXmlReader(&IID_IXmlReader, (void **)&reader, ((void*)0));
    ok(hr == S_OK, "S_OK, got %08x\n", hr);

    TEST_READER_STATE(reader, XmlReadState_Closed);


    hr = IXmlReader_GetLineNumber(reader, ((void*)0));
    ok(hr == E_INVALIDARG, "Expected E_INVALIDARG, got %08x\n", hr);

    hr = IXmlReader_GetLinePosition(reader, ((void*)0));
    ok(hr == E_INVALIDARG, "Expected E_INVALIDARG, got %08x\n", hr);

    position = 123;
    hr = IXmlReader_GetLinePosition(reader, &position);
    ok(hr == S_FALSE, "got %#x\n", hr);
    ok(position == 0, "got %u\n", position);

    position = 123;
    hr = IXmlReader_GetLineNumber(reader, &position);
    ok(hr == S_FALSE, "got %#x\n", hr);
    ok(position == 0, "got %u\n", position);

    set_input_string(reader, xml);

    TEST_READER_STATE(reader, XmlReadState_Initial);
    TEST_READER_POSITION(reader, 0, 0);
    hr = IXmlReader_Read(reader, &type);
    ok(hr == S_OK, "got %08x\n", hr);
    ok(type == XmlNodeType_Element, "got type %d\n", type);
    TEST_READER_POSITION2(reader, 1, 2, ~0u, 34);

    next_attribute(reader);
    TEST_READER_POSITION2(reader, 1, 6, ~0u, 34);

    next_attribute(reader);
    TEST_READER_POSITION2(reader, 1, 24, ~0u, 34);

    move_to_element(reader);
    TEST_READER_POSITION2(reader, 1, 2, ~0u, 34);

    hr = IXmlReader_Read(reader, &type);
    ok(hr == S_OK, "got %08x\n", hr);
    ok(type == XmlNodeType_Whitespace, "got type %d\n", type);
    TEST_READER_POSITION2(reader, 1, 35, 2, 6);

    hr = IXmlReader_Read(reader, &type);
    ok(hr == S_OK, "got %08x\n", hr);
    ok(type == XmlNodeType_EndElement, "got type %d\n", type);
    TEST_READER_POSITION2(reader, 2, 3, 2, 6);

    hr = IXmlReader_SetInput(reader, ((void*)0));
    ok(hr == S_OK, "got %08x\n", hr);
    TEST_READER_STATE2(reader, XmlReadState_Initial, XmlReadState_Closed);
    TEST_READER_POSITION(reader, 0, 0);

    IXmlReader_Release(reader);
}
