
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct test_entry {scalar_t__ hr_broken; scalar_t__ hr; int value; int name; scalar_t__ xml; } ;
typedef scalar_t__ XmlNodeType ;
typedef int WCHAR ;
typedef scalar_t__ UINT ;
typedef int IXmlReader ;
typedef scalar_t__ HRESULT ;


 scalar_t__ CreateXmlReader (int *,void**,int *) ;
 int IID_IXmlReader ;
 scalar_t__ IXmlReader_GetQualifiedName (int *,int const**,scalar_t__*) ;
 scalar_t__ IXmlReader_Read (int *,scalar_t__*) ;
 int IXmlReader_Release (int *) ;
 scalar_t__ S_OK ;
 scalar_t__ XmlNodeType_None ;
 scalar_t__ XmlNodeType_ProcessingInstruction ;
 int * a2w (int ) ;
 scalar_t__ broken (int) ;
 int free_str (int *) ;
 int lstrcmpW (int const*,int *) ;
 int ok (int,char*,scalar_t__,...) ;
 struct test_entry* pi_tests ;
 int reader_name (int *,int ) ;
 int reader_value (int *,int ) ;
 int set_input_string (int *,scalar_t__) ;
 scalar_t__ strlen (int ) ;
 scalar_t__ wine_dbgstr_w (int const*) ;

__attribute__((used)) static void test_read_pi(void)
{
    struct test_entry *test = pi_tests;
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
        if (test->hr_broken)
            ok(hr == test->hr || broken(hr == test->hr_broken), "got %08x for %s\n", hr, test->xml);
        else
            ok(hr == test->hr, "got %08x for %s\n", hr, test->xml);
        if (hr == S_OK)
        {
            const WCHAR *str;
            WCHAR *str_exp;
            UINT len;

            ok(type == XmlNodeType_ProcessingInstruction, "got %d for %s\n", type, test->xml);

            reader_name(reader, test->name);

            len = 0;
            str = ((void*)0);
            hr = IXmlReader_GetQualifiedName(reader, &str, &len);
            ok(hr == S_OK, "got 0x%08x\n", hr);
            ok(len == strlen(test->name), "got %u\n", len);
            str_exp = a2w(test->name);
            ok(!lstrcmpW(str, str_exp), "got %s\n", wine_dbgstr_w(str));
            free_str(str_exp);


            reader_value(reader, test->value);
        }

        test++;
    }

    IXmlReader_Release(reader);
}
