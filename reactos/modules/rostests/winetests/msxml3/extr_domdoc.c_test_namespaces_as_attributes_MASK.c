#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_6__ ;
typedef  struct TYPE_12__   TYPE_5__ ;
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_13__ {char* xmlns_uri; scalar_t__ guid; } ;
typedef  TYPE_6__ namespace_as_attribute_t ;
typedef  int /*<<< orphan*/  VARIANT_BOOL ;
struct TYPE_12__ {char* member_0; char* member_1; char* member_2; } ;
struct TYPE_11__ {char* member_0; char* member_2; int /*<<< orphan*/ * member_1; } ;
struct TYPE_10__ {char* member_0; char* member_1; char* member_2; } ;
struct TYPE_9__ {char* member_0; char* member_2; int /*<<< orphan*/ * member_1; } ;
struct TYPE_8__ {char* member_0; char* member_1; char* member_2; } ;
typedef  size_t LONG ;
typedef  int /*<<< orphan*/  IXMLDOMNode ;
typedef  int /*<<< orphan*/  IXMLDOMNamedNodeMap ;
typedef  int /*<<< orphan*/  IXMLDOMDocument ;
typedef  size_t HRESULT ;
typedef  int /*<<< orphan*/ * BSTR ;

/* Variables and functions */
 int /*<<< orphan*/  CLSCTX_INPROC_SERVER ; 
 size_t FUNC0 (scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,void**) ; 
 int /*<<< orphan*/  IID_IXMLDOMDocument2 ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 size_t FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 size_t FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 size_t FUNC5 (int /*<<< orphan*/ *,size_t,int /*<<< orphan*/ **) ; 
 size_t FUNC6 (int /*<<< orphan*/ *,size_t*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 size_t FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 size_t FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 size_t FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 size_t FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 size_t FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 size_t FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int FUNC14 (size_t) ; 
 size_t S_FALSE ; 
 size_t S_OK ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (char*) ; 
 int /*<<< orphan*/  FUNC17 () ; 
 int /*<<< orphan*/  FUNC18 (scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 TYPE_6__* namespace_as_attribute_test_data ; 
 int /*<<< orphan*/  FUNC20 (int,char*,...) ; 
 int /*<<< orphan*/  FUNC21 (char*,char*) ; 
 int /*<<< orphan*/  FUNC22 (scalar_t__) ; 
 size_t FUNC23 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC24(void)
{
    const namespace_as_attribute_t *entry = namespace_as_attribute_test_data;
    struct test {
        const char *xml;
        int explen;
        const char *names[3];
        const char *prefixes[3];
        const char *basenames[3];
        const char *uris[3];
        const char *texts[3];
    };
    static const struct test tests[] = {
        {
            "<a ns:b=\"b attr\" d=\"d attr\" xmlns:ns=\"nshref\" />", 3,
            { "ns:b",   "d",     "xmlns:ns" },  /* nodeName */
            { "ns",     NULL,     "xmlns" },    /* prefix */
            { "b",      "d",      "ns" },       /* baseName */
            { "nshref", NULL,     "" },         /* namespaceURI */
            { "b attr", "d attr", "nshref" },   /* text */
        },
        /* property only */
        {
            "<a d=\"d attr\" />", 1,
            { "d" },        /* nodeName */
            { NULL },       /* prefix */
            { "d" },        /* baseName */
            { NULL },       /* namespaceURI */
            { "d attr" },   /* text */
        },
        /* namespace only */
        {
            "<a xmlns:ns=\"nshref\" />", 1,
            { "xmlns:ns" }, /* nodeName */
            { "xmlns" },    /* prefix */
            { "ns" },       /* baseName */
            { "" },         /* namespaceURI */
            { "nshref" },   /* text */
        },
        /* no properties or namespaces */
        {
            "<a />", 0,
        },

        { NULL }
    };
    const struct test *test;
    IXMLDOMNamedNodeMap *map;
    IXMLDOMNode *node, *item;
    IXMLDOMDocument *doc;
    VARIANT_BOOL b;
    LONG len, i;
    HRESULT hr;
    BSTR str;

    while (entry->guid)
    {
        if (!FUNC18(entry->guid, &IID_IXMLDOMDocument2))
        {
            entry++;
            continue;
        }

        test = tests;
        while (test->xml) {
            hr = FUNC0(entry->guid, NULL, CLSCTX_INPROC_SERVER, &IID_IXMLDOMDocument2, (void **)&doc);
            FUNC20(FUNC14(hr), "Failed to create document %s, hr %#x.\n", FUNC22(entry->guid), hr);

            hr = FUNC2(doc, FUNC16(test->xml), &b);
            FUNC20(hr == S_OK, "Failed to load xml, hr %#x.\n", hr);

            node = NULL;
            hr = FUNC3(doc, FUNC16("a"), &node);
            FUNC20(FUNC14(hr), "Failed to select a node, hr %#x.\n", hr);

            hr = FUNC8(node, &map);
            FUNC20(FUNC14(hr), "Failed to get attributes, hr %#x.\n", hr);

            len = -1;
            hr = FUNC6(map, &len);
            FUNC20(FUNC14(hr), "Failed to get map length, hr %#x.\n", hr);
            FUNC20(len == test->explen, "got %d\n", len);

            item = NULL;
            hr = FUNC5(map, test->explen+1, &item);
            FUNC20(hr == S_FALSE, "Failed to get item, hr %#x.\n", hr);
            FUNC20(!item, "Item should be NULL\n");

            for (i = 0; i < len; i++)
            {
                item = NULL;
                hr = FUNC5(map, i, &item);
                FUNC20(FUNC14(hr), "Failed to get item, hr %#x.\n", hr);

                str = NULL;
                hr = FUNC11(item, &str);
                FUNC20(FUNC14(hr), "Failed to get node name, hr %#x.\n", hr);
                FUNC20(!FUNC19(str, FUNC16(test->names[i])), "got %s\n", FUNC23(str));
                FUNC15(str);

                str = NULL;
                hr = FUNC12(item, &str);
                if (test->prefixes[i])
                {
                    FUNC20(hr == S_OK, "Failed to get node name, hr %#x.\n", hr);
                    FUNC20(!FUNC19(str, FUNC16(test->prefixes[i])), "got %s\n", FUNC23(str));
                    FUNC15(str);
                }
                else
                    FUNC20(hr == S_FALSE, "Failed to get node name, hr %#x.\n", hr);

                str = NULL;
                hr = FUNC9(item, &str);
                FUNC20(FUNC14(hr), "Failed to get base name, hr %#x.\n", hr);
                FUNC20(!FUNC19(str, FUNC16(test->basenames[i])), "got %s\n", FUNC23(str));
                FUNC15(str);

                str = NULL;
                hr = FUNC10(item, &str);
                if (test->uris[i])
                {
                    FUNC20(hr == S_OK, "Failed to get node name, hr %#x.\n", hr);
                    if (test->prefixes[i] && !FUNC21(test->prefixes[i], "xmlns"))
                        FUNC20(!FUNC19(str, FUNC16(entry->xmlns_uri)), "got %s\n", FUNC23(str));
                    else
                        FUNC20(!FUNC19(str, FUNC16(test->uris[i])), "got %s\n", FUNC23(str));
                    FUNC15(str);
                }
                else
                    FUNC20(hr == S_FALSE, "Failed to get node name, hr %#x.\n", hr);

                str = NULL;
                hr = FUNC13(item, &str);
                FUNC20(FUNC14(hr), "Failed to get node text, hr %#x.\n", hr);
                FUNC20(!FUNC19(str, FUNC16(test->texts[i])), "got %s\n", FUNC23(str));
                FUNC15(str);

                FUNC7(item);
            }

            FUNC4(map);
            FUNC7(node);
            FUNC1(doc);

            test++;
        }

        entry++;
    }
    FUNC17();
}