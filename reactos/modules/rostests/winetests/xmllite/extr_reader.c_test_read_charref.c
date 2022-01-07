
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ XmlNodeType ;
typedef int WCHAR ;
typedef int IXmlReader ;
typedef scalar_t__ HRESULT ;


 scalar_t__ CreateXmlReader (int *,void**,int *) ;
 int IID_IXmlReader ;
 scalar_t__ IXmlReader_GetValue (int *,int const**,int *) ;
 scalar_t__ IXmlReader_Read (int *,scalar_t__*) ;
 int IXmlReader_Release (int *) ;
 scalar_t__ S_FALSE ;
 scalar_t__ S_OK ;
 scalar_t__ XmlNodeType_Element ;
 scalar_t__ XmlNodeType_EndElement ;
 scalar_t__ XmlNodeType_None ;
 scalar_t__ XmlNodeType_Text ;
 int lstrcmpW (int const*,int const*) ;
 int ok (int,char*,scalar_t__) ;
 int set_input_string (int *,char const*) ;
 scalar_t__ wine_dbgstr_w (int const*) ;

__attribute__((used)) static void test_read_charref(void)
{
    static const char testA[] = "<a b=\"c\">&#x1f3;&#x103;&gt;</a>";
    static const WCHAR chardataW[] = {0x01f3,0x0103,'>',0};
    const WCHAR *value;
    IXmlReader *reader;
    XmlNodeType type;
    HRESULT hr;

    hr = CreateXmlReader(&IID_IXmlReader, (void **)&reader, ((void*)0));
    ok(hr == S_OK, "S_OK, got %08x\n", hr);

    set_input_string(reader, testA);

    hr = IXmlReader_Read(reader, &type);
    ok(hr == S_OK, "got %08x\n", hr);
    ok(type == XmlNodeType_Element, "Unexpected node type %d\n", type);

    hr = IXmlReader_Read(reader, &type);
    ok(hr == S_OK, "got %08x\n", hr);
    ok(type == XmlNodeType_Text, "Unexpected node type %d\n", type);

    hr = IXmlReader_GetValue(reader, &value, ((void*)0));
    ok(hr == S_OK, "got %08x\n", hr);
    ok(!lstrcmpW(value, chardataW), "Text value : %s\n", wine_dbgstr_w(value));

    hr = IXmlReader_Read(reader, &type);
    ok(hr == S_OK, "got %08x\n", hr);
    ok(type == XmlNodeType_EndElement, "Unexpected node type %d\n", type);

    hr = IXmlReader_Read(reader, &type);
    ok(hr == S_FALSE, "got %08x\n", hr);
    ok(type == XmlNodeType_None, "Unexpected node type %d\n", type);

    IXmlReader_Release(reader);
}
