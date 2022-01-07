
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char WCHAR ;
typedef int IXmlReader ;
typedef scalar_t__ HRESULT ;


 scalar_t__ CreateXmlReader (int *,void**,int *) ;
 scalar_t__ E_INVALIDARG ;
 int IID_IXmlReader ;
 scalar_t__ IXmlReader_MoveToAttributeByName (int *,char const*,char const*) ;
 int IXmlReader_Release (int *) ;
 scalar_t__ S_FALSE ;
 scalar_t__ S_OK ;
 int XmlNodeType_Element ;
 scalar_t__ broken (int) ;
 int ok (int,char*,scalar_t__) ;
 int read_node (int *,int ) ;
 int reader_value (int *,char*) ;
 int set_input_string (int *,char const*) ;

__attribute__((used)) static void test_attribute_by_name(void)
{
    static const char *xml = "<a><elem xmlns=\"myns\" a=\"value a\" b=\"value b\" xmlns:ns=\"ns uri\" "
        "ns:c=\"value c\" c=\"value c2\"/></a>";
    static const WCHAR xmlns_uriW[] = {'h','t','t','p',':','/','/','w','w','w','.','w','3','.','o','r','g','/',
        '2','0','0','0','/','x','m','l','n','s','/',0};
    static const WCHAR nsuriW[] = {'n','s',' ','u','r','i',0};
    static const WCHAR xmlnsW[] = {'x','m','l','n','s',0};
    static const WCHAR mynsW[] = {'m','y','n','s',0};
    static const WCHAR nsW[] = {'n','s',0};
    static const WCHAR emptyW[] = {0};
    static const WCHAR aW[] = {'a',0};
    static const WCHAR bW[] = {'b',0};
    static const WCHAR cW[] = {'c',0};
    IXmlReader *reader;
    HRESULT hr;

    hr = CreateXmlReader(&IID_IXmlReader, (void **)&reader, ((void*)0));
    ok(hr == S_OK, "Failed to create reader, hr %#x.\n", hr);

    set_input_string(reader, xml);

    hr = IXmlReader_MoveToAttributeByName(reader, ((void*)0), ((void*)0));
    ok(hr == E_INVALIDARG || broken(hr == S_FALSE) , "Unexpected hr %#x.\n", hr);

    hr = IXmlReader_MoveToAttributeByName(reader, emptyW, ((void*)0));
    ok(hr == S_FALSE, "Unexpected hr %#x.\n", hr);

    read_node(reader, XmlNodeType_Element);

    hr = IXmlReader_MoveToAttributeByName(reader, emptyW, ((void*)0));
    ok(hr == S_FALSE, "Unexpected hr %#x.\n", hr);

    read_node(reader, XmlNodeType_Element);

    hr = IXmlReader_MoveToAttributeByName(reader, ((void*)0), ((void*)0));
    ok(hr == E_INVALIDARG, "Unexpected hr %#x.\n", hr);

    hr = IXmlReader_MoveToAttributeByName(reader, ((void*)0), xmlns_uriW);
    ok(hr == E_INVALIDARG, "Unexpected hr %#x.\n", hr);

    hr = IXmlReader_MoveToAttributeByName(reader, emptyW, xmlns_uriW);
    ok(hr == S_FALSE, "Unexpected hr %#x.\n", hr);

    hr = IXmlReader_MoveToAttributeByName(reader, xmlnsW, ((void*)0));
    ok(hr == S_FALSE, "Unexpected hr %#x.\n", hr);

    hr = IXmlReader_MoveToAttributeByName(reader, xmlnsW, xmlns_uriW);
    ok(hr == S_OK, "Unexpected hr %#x.\n", hr);
    reader_value(reader, "myns");

    hr = IXmlReader_MoveToAttributeByName(reader, aW, ((void*)0));
    ok(hr == S_OK, "Unexpected hr %#x.\n", hr);
    reader_value(reader, "value a");

    hr = IXmlReader_MoveToAttributeByName(reader, bW, ((void*)0));
    ok(hr == S_OK, "Unexpected hr %#x.\n", hr);
    reader_value(reader, "value b");

    hr = IXmlReader_MoveToAttributeByName(reader, aW, mynsW);
    ok(hr == S_FALSE, "Unexpected hr %#x.\n", hr);

    hr = IXmlReader_MoveToAttributeByName(reader, nsW, ((void*)0));
    ok(hr == S_FALSE, "Unexpected hr %#x.\n", hr);

    hr = IXmlReader_MoveToAttributeByName(reader, nsW, xmlns_uriW);
    ok(hr == S_OK, "Unexpected hr %#x.\n", hr);
    reader_value(reader, "ns uri");

    hr = IXmlReader_MoveToAttributeByName(reader, bW, emptyW);
    ok(hr == S_OK, "Unexpected hr %#x.\n", hr);
    reader_value(reader, "value b");

    hr = IXmlReader_MoveToAttributeByName(reader, cW, ((void*)0));
    ok(hr == S_OK, "Unexpected hr %#x.\n", hr);
    reader_value(reader, "value c2");

    hr = IXmlReader_MoveToAttributeByName(reader, cW, nsuriW);
    ok(hr == S_OK, "Unexpected hr %#x.\n", hr);
    reader_value(reader, "value c");

    IXmlReader_Release(reader);
}
