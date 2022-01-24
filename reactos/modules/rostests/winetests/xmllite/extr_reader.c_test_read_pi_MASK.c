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
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/  const**,scalar_t__*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ S_OK ; 
 scalar_t__ XmlNodeType_None ; 
 scalar_t__ XmlNodeType_ProcessingInstruction ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/  const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int,char*,scalar_t__,...) ; 
 struct test_entry* pi_tests ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,scalar_t__) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/  const*) ; 

__attribute__((used)) static void FUNC14(void)
{
    struct test_entry *test = pi_tests;
    IXmlReader *reader;
    HRESULT hr;

    hr = FUNC0(&IID_IXmlReader, (void**)&reader, NULL);
    FUNC8(hr == S_OK, "S_OK, got %08x\n", hr);

    while (test->xml)
    {
        XmlNodeType type;

        FUNC11(reader, test->xml);

        type = XmlNodeType_None;
        hr = FUNC2(reader, &type);
        if (test->hr_broken)
            FUNC8(hr == test->hr || FUNC5(hr == test->hr_broken), "got %08x for %s\n", hr, test->xml);
        else
            FUNC8(hr == test->hr, "got %08x for %s\n", hr, test->xml);
        if (hr == S_OK)
        {
            const WCHAR *str;
            WCHAR *str_exp;
            UINT len;

            FUNC8(type == XmlNodeType_ProcessingInstruction, "got %d for %s\n", type, test->xml);

            FUNC9(reader, test->name);

            len = 0;
            str = NULL;
            hr = FUNC1(reader, &str, &len);
            FUNC8(hr == S_OK, "got 0x%08x\n", hr);
            FUNC8(len == FUNC12(test->name), "got %u\n", len);
            str_exp = FUNC4(test->name);
            FUNC8(!FUNC7(str, str_exp), "got %s\n", FUNC13(str));
            FUNC6(str_exp);

            /* value */
            FUNC10(reader, test->value);
        }

        test++;
    }

    FUNC3(reader);
}