
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct test_entry {int hr; int value; scalar_t__ xml; } ;
typedef scalar_t__ XmlNodeType ;
typedef scalar_t__ WCHAR ;
typedef int UINT ;
typedef int IXmlReader ;
typedef int HRESULT ;


 int CreateXmlReader (int *,void**,int *) ;
 int IID_IXmlReader ;
 int IXmlReader_GetLocalName (int *,scalar_t__ const**,int *) ;
 int IXmlReader_GetQualifiedName (int *,scalar_t__ const**,int*) ;
 int IXmlReader_Read (int *,scalar_t__*) ;
 int IXmlReader_Release (int *) ;
 int S_OK ;
 scalar_t__ XmlNodeType_Element ;
 scalar_t__ XmlNodeType_None ;
 scalar_t__ XmlNodeType_Text ;
 int ok (int,char*,int,...) ;
 int reader_name (int *,char*) ;
 int reader_value (int *,int ) ;
 int set_input_string (int *,scalar_t__) ;
 struct test_entry* text_tests ;
 int wine_dbgstr_w (scalar_t__ const*) ;

__attribute__((used)) static void test_read_text(void)
{
    struct test_entry *test = text_tests;
    IXmlReader *reader;
    HRESULT hr;

    hr = CreateXmlReader(&IID_IXmlReader, (void**)&reader, ((void*)0));
    ok(hr == S_OK, "S_OK, got %08x\n", hr);

    while (test->xml)
    {
        XmlNodeType type;

        set_input_string(reader, test->xml);

        type = XmlNodeType_None;
        hr = IXmlReader_Read(reader, &type);


        if (type == XmlNodeType_Element)
        {
            type = XmlNodeType_None;
            hr = IXmlReader_Read(reader, &type);
        }
        ok(hr == test->hr, "got %08x for %s\n", hr, test->xml);
        if (hr == S_OK)
        {
            const WCHAR *str;
            UINT len;

            ok(type == XmlNodeType_Text, "got %d for %s\n", type, test->xml);

            reader_name(reader, "");

            str = ((void*)0);
            hr = IXmlReader_GetLocalName(reader, &str, ((void*)0));
            ok(hr == S_OK, "got 0x%08x\n", hr);
            ok(*str == 0, "got %s\n", wine_dbgstr_w(str));

            len = 1;
            str = ((void*)0);
            hr = IXmlReader_GetQualifiedName(reader, &str, &len);
            ok(hr == S_OK, "got 0x%08x\n", hr);
            ok(len == 0, "got %u\n", len);
            ok(*str == 0, "got %s\n", wine_dbgstr_w(str));

            str = ((void*)0);
            hr = IXmlReader_GetQualifiedName(reader, &str, ((void*)0));
            ok(hr == S_OK, "got 0x%08x\n", hr);
            ok(*str == 0, "got %s\n", wine_dbgstr_w(str));


            reader_value(reader, test->value);
        }

        test++;
    }

    IXmlReader_Release(reader);
}
