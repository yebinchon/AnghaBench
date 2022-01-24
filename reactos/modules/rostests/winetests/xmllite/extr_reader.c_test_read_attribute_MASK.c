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
struct test_entry {scalar_t__ hr_broken; scalar_t__ hr; int /*<<< orphan*/  value; int /*<<< orphan*/  name; scalar_t__ xml; } ;
typedef  scalar_t__ XmlNodeType ;
typedef  int /*<<< orphan*/  WCHAR ;
typedef  scalar_t__ UINT ;
typedef  int /*<<< orphan*/  IXmlReader ;
typedef  scalar_t__ HRESULT ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,void**,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  IID_IXmlReader ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,scalar_t__*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/  const**,scalar_t__*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ S_OK ; 
 scalar_t__ XmlNodeType_Element ; 
 scalar_t__ XmlNodeType_None ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ ) ; 
 struct test_entry* attributes_tests ; 
 scalar_t__ FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/  const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int,char*,scalar_t__,...) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,scalar_t__) ; 
 scalar_t__ FUNC14 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC15 (int /*<<< orphan*/  const*) ; 

__attribute__((used)) static void FUNC16(void)
{
    struct test_entry *test = attributes_tests;
    IXmlReader *reader;
    HRESULT hr;

    hr = FUNC0(&IID_IXmlReader, (void**)&reader, NULL);
    FUNC10(hr == S_OK, "S_OK, got %08x\n", hr);

    while (test->xml)
    {
        XmlNodeType type;

        FUNC13(reader, test->xml);

        hr = FUNC4(reader, NULL);

        if (test->hr_broken)
            FUNC10(hr == test->hr || FUNC7(hr == test->hr_broken), "got %08x for %s\n", hr, test->xml);
        else
            FUNC10(hr == test->hr, "got %08x for %s\n", hr, test->xml);
        if (hr == S_OK)
        {
            const WCHAR *str;
            WCHAR *str_exp;
            UINT len;

            type = XmlNodeType_None;
            hr = FUNC1(reader, &type);
            FUNC10(hr == S_OK, "Failed to get node type, %#x\n", hr);

            FUNC10(type == XmlNodeType_Element, "got %d for %s\n", type, test->xml);

            hr = FUNC3(reader);
            FUNC10(hr == S_OK, "got 0x%08x\n", hr);

            FUNC11(reader, test->name);

            len = 1;
            str = NULL;
            hr = FUNC2(reader, &str, &len);
            FUNC10(hr == S_OK, "got 0x%08x\n", hr);
            FUNC10(len == FUNC14(test->name), "got %u\n", len);
            str_exp = FUNC6(test->name);
            FUNC10(!FUNC9(str, str_exp), "got %s\n", FUNC15(str));
            FUNC8(str_exp);

            /* value */
            FUNC12(reader, test->value);
        }

        test++;
    }

    FUNC5(reader);
}