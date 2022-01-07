
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ XmlNodeType ;
struct TYPE_3__ {scalar_t__ count; } ;
typedef int LONG_PTR ;
typedef int IXmlResolver ;
typedef int IXmlReader ;
typedef int IUnknown ;
typedef int HRESULT ;
typedef int DtdProcessing ;


 int CreateXmlReader (int *,void**,int *) ;
 int DtdProcessing_Prohibit ;
 int E_INVALIDARG ;
 int E_NOINTERFACE ;
 int FALSE ;
 int IID_IStream ;
 int IID_IUnknown ;
 int IID_IXmlReader ;
 int IUnknown_QueryInterface (int *,int *,void**) ;
 int IUnknown_Release (int *) ;
 int IXmlReader_GetNodeType (int *,scalar_t__*) ;
 int IXmlReader_GetProperty (int *,int ,int*) ;
 int IXmlReader_Release (int *) ;
 int IXmlReader_SetInput (int *,int *) ;
 int IXmlReader_SetProperty (int *,int ,int) ;
 int IXmlResolver_Release (int *) ;
 int S_FALSE ;
 int S_OK ;
 int TEST_READER_STATE (int *,int ) ;
 int TEST_READER_STATE2 (int *,int ,int ) ;
 scalar_t__ XmlNodeType_Element ;
 scalar_t__ XmlNodeType_None ;
 int XmlReadState_Closed ;
 int XmlReadState_Initial ;
 int XmlReaderProperty_DtdProcessing ;
 int XmlReaderProperty_XmlResolver ;
 TYPE_1__ input_iids ;
 int ok (int,char*,...) ;
 int ok_iids (TYPE_1__*,int ,int ,int ) ;
 int setinput_full ;
 int setinput_full_old ;
 int testinput_createinstance (void**) ;
 int testresolver ;

__attribute__((used)) static void test_reader_create(void)
{
    IXmlResolver *resolver;
    IUnknown *input, *unk;
    IXmlReader *reader;
    DtdProcessing dtd;
    XmlNodeType nodetype;
    HRESULT hr;


    if (0)
    {
        CreateXmlReader(&IID_IXmlReader, ((void*)0), ((void*)0));
        CreateXmlReader(((void*)0), (void**)&reader, ((void*)0));
    }

    hr = CreateXmlReader(&IID_IStream, (void **)&unk, ((void*)0));
    ok(hr == E_NOINTERFACE, "got %08x\n", hr);

    hr = CreateXmlReader(&IID_IUnknown, (void **)&unk, ((void*)0));
    ok(hr == S_OK, "Expected S_OK, got %08x\n", hr);
    hr = IUnknown_QueryInterface(unk, &IID_IXmlReader, (void **)&reader);
    ok(hr == S_OK, "Expected S_OK, got %08x\n", hr);
    ok(unk == (IUnknown *)reader, "unexpected interface\n");
    IXmlReader_Release(reader);
    IUnknown_Release(unk);

    hr = CreateXmlReader(&IID_IUnknown, (void **)&reader, ((void*)0));
    ok(hr == S_OK, "Expected S_OK, got %08x\n", hr);
    IXmlReader_Release(reader);

    hr = CreateXmlReader(&IID_IXmlReader, (void**)&reader, ((void*)0));
    ok(hr == S_OK, "Expected S_OK, got %08x\n", hr);

    TEST_READER_STATE(reader, XmlReadState_Closed);

    nodetype = XmlNodeType_Element;
    hr = IXmlReader_GetNodeType(reader, &nodetype);
    ok(hr == S_FALSE, "got %08x\n", hr);
    ok(nodetype == XmlNodeType_None, "got %d\n", nodetype);


    if (0)
    {
        hr = IXmlReader_GetNodeType(reader, ((void*)0));
        ok(hr == E_INVALIDARG, "got %08x\n", hr);
    }

    resolver = (void*)0xdeadbeef;
    hr = IXmlReader_GetProperty(reader, XmlReaderProperty_XmlResolver, (LONG_PTR*)&resolver);
    ok(hr == S_OK, "got 0x%08x\n", hr);
    ok(resolver == ((void*)0), "got %p\n", resolver);

    hr = IXmlReader_SetProperty(reader, XmlReaderProperty_XmlResolver, 0);
    ok(hr == S_OK, "got 0x%08x\n", hr);

    hr = IXmlReader_SetProperty(reader, XmlReaderProperty_XmlResolver, (LONG_PTR)&testresolver);
    ok(hr == S_OK, "got 0x%08x\n", hr);

    resolver = ((void*)0);
    hr = IXmlReader_GetProperty(reader, XmlReaderProperty_XmlResolver, (LONG_PTR*)&resolver);
    ok(hr == S_OK, "got 0x%08x\n", hr);
    ok(resolver == &testresolver, "got %p\n", resolver);
    IXmlResolver_Release(resolver);

    hr = IXmlReader_SetProperty(reader, XmlReaderProperty_XmlResolver, 0);
    ok(hr == S_OK, "got 0x%08x\n", hr);

    dtd = 2;
    hr = IXmlReader_GetProperty(reader, XmlReaderProperty_DtdProcessing, (LONG_PTR*)&dtd);
    ok(hr == S_OK, "Expected S_OK, got %08x\n", hr);
    ok(dtd == DtdProcessing_Prohibit, "got %d\n", dtd);

    dtd = 2;
    hr = IXmlReader_SetProperty(reader, XmlReaderProperty_DtdProcessing, dtd);
    ok(hr == E_INVALIDARG, "Expected E_INVALIDARG, got %08x\n", hr);

    hr = IXmlReader_SetProperty(reader, XmlReaderProperty_DtdProcessing, -1);
    ok(hr == E_INVALIDARG, "Expected E_INVALIDARG, got %08x\n", hr);


    hr = IXmlReader_SetInput(reader, ((void*)0));
    ok(hr == S_OK, "Expected S_OK, got %08x\n", hr);

    TEST_READER_STATE2(reader, XmlReadState_Initial, XmlReadState_Closed);


    hr = testinput_createinstance((void**)&input);
    ok(hr == S_OK, "Expected S_OK, got %08x\n", hr);

    if (hr == S_OK)
    {
        input_iids.count = 0;
        hr = IXmlReader_SetInput(reader, input);
        ok(hr == E_NOINTERFACE, "Expected E_NOINTERFACE, got %08x\n", hr);
        ok_iids(&input_iids, setinput_full, setinput_full_old, FALSE);
        IUnknown_Release(input);
    }
    IXmlReader_Release(reader);
}
