
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct uri_test TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef unsigned int XmlNodeType ;
typedef scalar_t__ WCHAR ;
typedef scalar_t__ UINT ;
struct uri_test {char const* xml; char const** uri; } ;
struct TYPE_3__ {char* member_0; char* member_1; char* member_2; char* member_3; char* member_4; } ;
typedef int IXmlReader ;
typedef unsigned int HRESULT ;


 unsigned int ARRAY_SIZE (TYPE_2__*) ;
 unsigned int CreateXmlReader (int *,void**,int *) ;
 int IID_IXmlReader ;
 unsigned int IXmlReader_GetLocalName (int *,scalar_t__ const**,scalar_t__*) ;
 unsigned int IXmlReader_GetQualifiedName (int *,scalar_t__ const**,scalar_t__*) ;
 unsigned int IXmlReader_Read (int *,unsigned int*) ;
 int IXmlReader_Release (int *) ;
 unsigned int S_OK ;
 unsigned int XmlNodeType_CDATA ;
 unsigned int XmlNodeType_Comment ;
 unsigned int XmlNodeType_Element ;
 unsigned int XmlNodeType_EndElement ;
 unsigned int XmlNodeType_None ;
 unsigned int XmlNodeType_ProcessingInstruction ;
 unsigned int XmlNodeType_Text ;
 unsigned int XmlNodeType_Whitespace ;
 unsigned int XmlNodeType_XmlDeclaration ;
 int ok (int,char*,...) ;
 int reader_namespace (int *,char const*) ;
 int set_input_string (int *,char const*) ;

__attribute__((used)) static void test_namespaceuri(void)
{
    struct uri_test
    {
        const char *xml;
        const char *uri[5];
    } uri_tests[] =
    {
        { "<a xmlns=\"defns a\"><b xmlns=\"defns b\"><c xmlns=\"defns c\"/></b></a>",
                { "defns a", "defns b", "defns c", "defns b", "defns a" }},
        { "<r:a xmlns=\"defns a\" xmlns:r=\"ns r\"/>",
                { "ns r" }},
        { "<r:a xmlns=\"defns a\" xmlns:r=\"ns r\"><b/></r:a>",
                { "ns r", "defns a", "ns r" }},
        { "<a xmlns=\"defns a\" xmlns:r=\"ns r\"><r:b/></a>",
                { "defns a", "ns r", "defns a" }},
        { "<a><b><c/></b></a>",
                { "", "", "", "", "" }},
        { "<a>text</a>",
                { "", "", "" }},
        { "<a>\r\n</a>",
                { "", "", "" }},
        { "<a><![CDATA[data]]></a>",
                { "", "", "" }},
        { "<?xml version=\"1.0\" ?><a/>",
                { "", "" }},
        { "<a><?pi ?></a>",
                { "", "", "" }},
        { "<a><!-- comment --></a>",
                { "", "", "" }},
    };
    IXmlReader *reader;
    XmlNodeType type;
    unsigned int i;
    HRESULT hr;

    hr = CreateXmlReader(&IID_IXmlReader, (void**)&reader, ((void*)0));
    ok(hr == S_OK, "S_OK, got %08x\n", hr);

    for (i = 0; i < ARRAY_SIZE(uri_tests); i++) {
        unsigned int j = 0;

        set_input_string(reader, uri_tests[i].xml);

        type = ~0u;
        while (IXmlReader_Read(reader, &type) == S_OK) {
            const WCHAR *local, *qname;
            UINT length, length2;

            ok(type == XmlNodeType_Element ||
                    type == XmlNodeType_Text ||
                    type == XmlNodeType_CDATA ||
                    type == XmlNodeType_ProcessingInstruction ||
                    type == XmlNodeType_Comment ||
                    type == XmlNodeType_Whitespace ||
                    type == XmlNodeType_EndElement ||
                    type == XmlNodeType_XmlDeclaration, "Unexpected node type %d.\n", type);

            local = ((void*)0);
            length = 0;
            hr = IXmlReader_GetLocalName(reader, &local, &length);
            ok(hr == S_OK, "S_OK, got %08x\n", hr);
            ok(local != ((void*)0), "Unexpected NULL local name pointer\n");

            qname = ((void*)0);
            length2 = 0;
            hr = IXmlReader_GetQualifiedName(reader, &qname, &length2);
            ok(hr == S_OK, "S_OK, got %08x\n", hr);
            ok(qname != ((void*)0), "Unexpected NULL qualified name pointer\n");

            if (type == XmlNodeType_Element ||
                    type == XmlNodeType_EndElement ||
                    type == XmlNodeType_ProcessingInstruction ||
                    type == XmlNodeType_XmlDeclaration)
            {
                ok(*local != 0, "Unexpected empty local name\n");
                ok(length > 0, "Unexpected local name length\n");

                ok(*qname != 0, "Unexpected empty qualified name\n");
                ok(length2 > 0, "Unexpected qualified name length\n");
            }

            reader_namespace(reader, uri_tests[i].uri[j]);

            j++;
        }
        ok(type == XmlNodeType_None, "Unexpected node type %d\n", type);
    }

    IXmlReader_Release(reader);
}
