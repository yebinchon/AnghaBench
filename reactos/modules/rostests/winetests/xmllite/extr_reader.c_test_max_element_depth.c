
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int XmlNodeType ;
typedef int IXmlReader ;
typedef unsigned int HRESULT ;


 unsigned int CreateXmlReader (int *,void**,int *) ;
 int IID_IXmlReader ;
 unsigned int IXmlReader_MoveToFirstAttribute (int *) ;
 unsigned int IXmlReader_Read (int *,unsigned int*) ;
 int IXmlReader_Release (int *) ;
 unsigned int IXmlReader_SetProperty (int *,int ,int) ;
 unsigned int SC_E_MAXELEMENTDEPTH ;
 unsigned int S_OK ;
 int TEST_DEPTH (int *,int) ;
 int TEST_DEPTH2 (int *,int ,int) ;
 int TEST_READER_STATE (int *,int ) ;
 unsigned int XmlNodeType_None ;
 int XmlReadState_EndOfFile ;
 int XmlReadState_Error ;
 int XmlReadState_Interactive ;
 int XmlReaderProperty_MaxElementDepth ;
 int ok (int,char*,unsigned int) ;
 int set_input_string (int *,char const*) ;

__attribute__((used)) static void test_max_element_depth(void)
{
    static const char *xml =
        "<a>"
            "<b attrb=\"_b\">"
                "<c>"
                   "<d></d>"
                "</c>"
            "</b>"
        "</a>";
    XmlNodeType nodetype;
    unsigned int count;
    IXmlReader *reader;
    HRESULT hr;

    hr = CreateXmlReader(&IID_IXmlReader, (void **)&reader, ((void*)0));
    ok(hr == S_OK, "S_OK, got %08x\n", hr);

    set_input_string(reader, xml);

    hr = IXmlReader_SetProperty(reader, XmlReaderProperty_MaxElementDepth, 2);
    ok(hr == S_OK, "got %08x\n", hr);

    TEST_DEPTH(reader, 0);

    hr = IXmlReader_Read(reader, ((void*)0));
    ok(hr == S_OK, "got %08x\n", hr);

    TEST_DEPTH(reader, 0);

    hr = IXmlReader_Read(reader, ((void*)0));
    ok(hr == S_OK, "got %08x\n", hr);

    TEST_DEPTH(reader, 1);
    TEST_READER_STATE(reader, XmlReadState_Interactive);

    hr = IXmlReader_Read(reader, ((void*)0));
    ok(hr == SC_E_MAXELEMENTDEPTH, "got %08x\n", hr);

    TEST_DEPTH2(reader, 0, 2);
    TEST_READER_STATE(reader, XmlReadState_Error);

    hr = IXmlReader_SetProperty(reader, XmlReaderProperty_MaxElementDepth, 10);
    ok(hr == S_OK, "got %08x\n", hr);

    hr = IXmlReader_Read(reader, ((void*)0));
    ok(hr == SC_E_MAXELEMENTDEPTH, "got %08x\n", hr);

    TEST_DEPTH2(reader, 0, 2);
    TEST_READER_STATE(reader, XmlReadState_Error);


    set_input_string(reader, xml);

    hr = IXmlReader_SetProperty(reader, XmlReaderProperty_MaxElementDepth, 2);
    ok(hr == S_OK, "got %08x\n", hr);

    TEST_DEPTH(reader, 0);

    hr = IXmlReader_Read(reader, ((void*)0));
    ok(hr == S_OK, "got %08x\n", hr);

    TEST_DEPTH(reader, 0);

    hr = IXmlReader_Read(reader, ((void*)0));
    ok(hr == S_OK, "got %08x\n", hr);

    TEST_DEPTH(reader, 1);

    hr = IXmlReader_MoveToFirstAttribute(reader);
    ok(hr == S_OK, "got %08x\n", hr);

    TEST_DEPTH(reader, 2);
    TEST_READER_STATE(reader, XmlReadState_Interactive);

    nodetype = 123;
    hr = IXmlReader_Read(reader, &nodetype);
    ok(hr == SC_E_MAXELEMENTDEPTH, "got %08x\n", hr);
    ok(nodetype == XmlNodeType_None, "got node type %d\n", nodetype);

    nodetype = 123;
    hr = IXmlReader_Read(reader, &nodetype);
    ok(hr == SC_E_MAXELEMENTDEPTH, "got %08x\n", hr);
    ok(nodetype == XmlNodeType_None, "got node type %d\n", nodetype);

    TEST_DEPTH2(reader, 0, 2);
    TEST_READER_STATE(reader, XmlReadState_Error);


    set_input_string(reader, xml);

    hr = IXmlReader_SetProperty(reader, XmlReaderProperty_MaxElementDepth, 0);
    ok(hr == S_OK, "got %08x\n", hr);

    count = 0;
    while (IXmlReader_Read(reader, ((void*)0)) == S_OK)
        count++;
    ok(count == 8, "Unexpected node number %u\n", count);
    TEST_READER_STATE(reader, XmlReadState_EndOfFile);

    IXmlReader_Release(reader);
}
