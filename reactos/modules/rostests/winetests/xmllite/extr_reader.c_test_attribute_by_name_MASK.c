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
typedef  char WCHAR ;
typedef  int /*<<< orphan*/  IXmlReader ;
typedef  scalar_t__ HRESULT ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,void**,int /*<<< orphan*/ *) ; 
 scalar_t__ E_INVALIDARG ; 
 int /*<<< orphan*/  IID_IXmlReader ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,char const*,char const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ S_FALSE ; 
 scalar_t__ S_OK ; 
 int /*<<< orphan*/  XmlNodeType_Element ; 
 scalar_t__ FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,char const*) ; 

__attribute__((used)) static void FUNC8(void)
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

    hr = FUNC0(&IID_IXmlReader, (void **)&reader, NULL);
    FUNC4(hr == S_OK, "Failed to create reader, hr %#x.\n", hr);

    FUNC7(reader, xml);

    hr = FUNC1(reader, NULL, NULL);
    FUNC4(hr == E_INVALIDARG || FUNC3(hr == S_FALSE) /* WinXP */, "Unexpected hr %#x.\n", hr);

    hr = FUNC1(reader, emptyW, NULL);
    FUNC4(hr == S_FALSE, "Unexpected hr %#x.\n", hr);

    FUNC5(reader, XmlNodeType_Element);

    hr = FUNC1(reader, emptyW, NULL);
    FUNC4(hr == S_FALSE, "Unexpected hr %#x.\n", hr);

    FUNC5(reader, XmlNodeType_Element);

    hr = FUNC1(reader, NULL, NULL);
    FUNC4(hr == E_INVALIDARG, "Unexpected hr %#x.\n", hr);

    hr = FUNC1(reader, NULL, xmlns_uriW);
    FUNC4(hr == E_INVALIDARG, "Unexpected hr %#x.\n", hr);

    hr = FUNC1(reader, emptyW, xmlns_uriW);
    FUNC4(hr == S_FALSE, "Unexpected hr %#x.\n", hr);

    hr = FUNC1(reader, xmlnsW, NULL);
    FUNC4(hr == S_FALSE, "Unexpected hr %#x.\n", hr);

    hr = FUNC1(reader, xmlnsW, xmlns_uriW);
    FUNC4(hr == S_OK, "Unexpected hr %#x.\n", hr);
    FUNC6(reader, "myns");

    hr = FUNC1(reader, aW, NULL);
    FUNC4(hr == S_OK, "Unexpected hr %#x.\n", hr);
    FUNC6(reader, "value a");

    hr = FUNC1(reader, bW, NULL);
    FUNC4(hr == S_OK, "Unexpected hr %#x.\n", hr);
    FUNC6(reader, "value b");

    hr = FUNC1(reader, aW, mynsW);
    FUNC4(hr == S_FALSE, "Unexpected hr %#x.\n", hr);

    hr = FUNC1(reader, nsW, NULL);
    FUNC4(hr == S_FALSE, "Unexpected hr %#x.\n", hr);

    hr = FUNC1(reader, nsW, xmlns_uriW);
    FUNC4(hr == S_OK, "Unexpected hr %#x.\n", hr);
    FUNC6(reader, "ns uri");

    hr = FUNC1(reader, bW, emptyW);
    FUNC4(hr == S_OK, "Unexpected hr %#x.\n", hr);
    FUNC6(reader, "value b");

    hr = FUNC1(reader, cW, NULL);
    FUNC4(hr == S_OK, "Unexpected hr %#x.\n", hr);
    FUNC6(reader, "value c2");

    hr = FUNC1(reader, cW, nsuriW);
    FUNC4(hr == S_OK, "Unexpected hr %#x.\n", hr);
    FUNC6(reader, "value c");

    FUNC2(reader);
}