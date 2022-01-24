#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct test_entry {int hr_broken; int hr; int /*<<< orphan*/  value; scalar_t__ xml; } ;
typedef  scalar_t__ XmlNodeType ;
typedef  scalar_t__ WCHAR ;
typedef  int UINT ;
typedef  int /*<<< orphan*/  IXmlReader ;
typedef  int HRESULT ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,void**,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  IID_IXmlReader ; 
 int FUNC1 (int /*<<< orphan*/ *,scalar_t__ const**,int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *,scalar_t__ const**,int*) ; 
 int FUNC3 (int /*<<< orphan*/ *,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int S_OK ; 
 scalar_t__ XmlNodeType_CDATA ; 
 scalar_t__ XmlNodeType_Element ; 
 scalar_t__ XmlNodeType_None ; 
 scalar_t__ FUNC5 (int) ; 
 struct test_entry* cdata_tests ; 
 int /*<<< orphan*/  FUNC6 (int,char*,int,...) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,scalar_t__) ; 
 int FUNC10 (scalar_t__ const*) ; 

__attribute__((used)) static void FUNC11(void)
{
    struct test_entry *test = cdata_tests;
    IXmlReader *reader;
    HRESULT hr;

    hr = FUNC0(&IID_IXmlReader, (void**)&reader, NULL);
    FUNC6(hr == S_OK, "S_OK, got %08x\n", hr);

    while (test->xml)
    {
        XmlNodeType type;

        FUNC9(reader, test->xml);

        type = XmlNodeType_None;
        hr = FUNC3(reader, &type);

        /* read one more to get to CDATA */
        if (type == XmlNodeType_Element)
        {
            type = XmlNodeType_None;
            hr = FUNC3(reader, &type);
        }

        if (test->hr_broken)
            FUNC6(hr == test->hr || FUNC5(hr == test->hr_broken), "got %08x for %s\n", hr, test->xml);
        else
            FUNC6(hr == test->hr, "got %08x for %s\n", hr, test->xml);
        if (hr == S_OK)
        {
            const WCHAR *str;
            UINT len;

            FUNC6(type == XmlNodeType_CDATA, "got %d for %s\n", type, test->xml);

            FUNC7(reader, "");

            str = NULL;
            hr = FUNC1(reader, &str, NULL);
            FUNC6(hr == S_OK, "got 0x%08x\n", hr);
            FUNC6(*str == 0, "got %s\n", FUNC10(str));

            len = 1;
            str = NULL;
            hr = FUNC2(reader, &str, &len);
            FUNC6(hr == S_OK, "got 0x%08x\n", hr);
            FUNC6(len == 0, "got %u\n", len);
            FUNC6(*str == 0, "got %s\n", FUNC10(str));

            str = NULL;
            hr = FUNC2(reader, &str, NULL);
            FUNC6(hr == S_OK, "got 0x%08x\n", hr);
            FUNC6(*str == 0, "got %s\n", FUNC10(str));

            /* value */
            FUNC8(reader, test->value);
        }

        test++;
    }

    FUNC4(reader);
}