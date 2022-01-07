
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int buf ;
typedef scalar_t__ XmlNodeType ;
typedef int WCHAR ;
typedef int UINT ;
typedef int IXmlReader ;
typedef int HRESULT ;


 int ARRAY_SIZE (int*) ;
 int CreateXmlReader (int *,void**,int *) ;
 int IID_IXmlReader ;
 int IXmlReader_Read (int *,scalar_t__*) ;
 int IXmlReader_ReadValueChunk (int *,int*,int,int*) ;
 int IXmlReader_Release (int *) ;
 int S_FALSE ;
 int S_OK ;
 scalar_t__ XmlNodeType_Comment ;
 int memset (int*,int,int) ;
 int ok (int,char*,...) ;
 int read_node (int *,scalar_t__) ;
 int read_value_char (int *,char) ;
 int reader_value (int *,char*) ;
 int set_input_string (int *,char*) ;
 int strcmp_wa (int*,char*) ;
 int wine_dbgstr_w (int*) ;

__attribute__((used)) static void test_readvaluechunk(void)
{
    IXmlReader *reader;
    XmlNodeType type;
    WCHAR buf[64];
    WCHAR b;
    HRESULT hr;
    UINT c;

    hr = CreateXmlReader(&IID_IXmlReader, (void**)&reader, ((void*)0));
    ok(hr == S_OK, "S_OK, got %08x\n", hr);

    set_input_string(reader, "<!-- comment1 --><!-- comment2 -->");

    hr = IXmlReader_Read(reader, &type);
    ok(hr == S_OK, "got %08x\n", hr);
    ok(type == XmlNodeType_Comment, "type = %u\n", type);

    read_value_char(reader, ' ');
    read_value_char(reader, 'c');


    reader_value(reader, "omment1 ");


    c = 0;
    b = 0;
    hr = IXmlReader_ReadValueChunk(reader, &b, 1, &c);
    ok(hr == S_FALSE, "got %08x\n", hr);
    ok(c == 0, "got %u\n", c);
    ok(b == 0, "got %x\n", b);

    c = 0xdeadbeef;
    hr = IXmlReader_ReadValueChunk(reader, buf, 0, &c);
    ok(hr == S_OK, "got %08x\n", hr);
    ok(!c, "c = %u\n", c);

    reader_value(reader, "omment1 ");


    read_node(reader, XmlNodeType_Comment);

    c = 0xdeadbeef;
    hr = IXmlReader_ReadValueChunk(reader, buf, 0, &c);
    ok(hr == S_OK, "got %08x\n", hr);
    ok(!c, "c = %u\n", c);

    c = 0xdeadbeef;
    memset(buf, 0xcc, sizeof(buf));
    hr = IXmlReader_ReadValueChunk(reader, buf, ARRAY_SIZE(buf), &c);
    ok(hr == S_OK, "got %08x\n", hr);
    ok(c == 10, "got %u\n", c);
    ok(buf[c] == 0xcccc, "buffer overflow\n");
    buf[c] = 0;
    ok(!strcmp_wa(buf, " comment2 "), "buf = %s\n", wine_dbgstr_w(buf));

    c = 0xdeadbeef;
    memset(buf, 0xcc, sizeof(buf));
    hr = IXmlReader_ReadValueChunk(reader, buf, ARRAY_SIZE(buf), &c);
    ok(hr == S_FALSE, "got %08x\n", hr);
    ok(!c, "got %u\n", c);


    reader_value(reader, "");


    c = 0xdeadbeef;
    b = 0xffff;
    hr = IXmlReader_ReadValueChunk(reader, &b, 1, &c);
    ok(hr == S_FALSE, "got %08x\n", hr);
    ok(c == 0, "got %u\n", c);
    ok(b == 0xffff, "got %x\n", b);

    reader_value(reader, "");

    IXmlReader_Release(reader);
}
