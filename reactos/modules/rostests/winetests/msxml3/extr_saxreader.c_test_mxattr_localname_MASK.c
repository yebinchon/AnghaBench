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
struct msxmlsupported_data_t {scalar_t__ clsid; int /*<<< orphan*/  name; } ;
typedef  char WCHAR ;
typedef  int /*<<< orphan*/  ISAXAttributes ;
typedef  int /*<<< orphan*/  IMXAttributes ;
typedef  int /*<<< orphan*/  HRESULT ;

/* Variables and functions */
 int /*<<< orphan*/  CLSCTX_INPROC_SERVER ; 
 int /*<<< orphan*/  CLSID_SAXAttributes ; 
 int /*<<< orphan*/  CLSID_SAXAttributes30 ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,void**) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  E_INVALIDARG ; 
 int /*<<< orphan*/  E_POINTER ; 
 int /*<<< orphan*/  IID_IMXAttributes ; 
 int /*<<< orphan*/  IID_ISAXAttributes ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,void**) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ,int*) ; 
 scalar_t__ FUNC7 (scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  S_OK ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (char const*) ; 
 int /*<<< orphan*/  mxattributes_support_data ; 
 int /*<<< orphan*/  FUNC12 (int,char*,int /*<<< orphan*/ ,int) ; 
 struct msxmlsupported_data_t* saxattr_support_data ; 

__attribute__((used)) static void FUNC13(void)
{
    static const WCHAR localname1W[] = {'l','o','c','a','l','n','a','m','e','1',0};
    static const WCHAR localnameW[] = {'l','o','c','a','l','n','a','m','e',0};
    static const WCHAR uri1W[] = {'u','r','i','1',0};
    static const WCHAR uriW[] = {'u','r','i',0};

    const struct msxmlsupported_data_t *table = saxattr_support_data;

    while (table->clsid)
    {
        ISAXAttributes *saxattr;
        IMXAttributes *mxattr;
        HRESULT hr;
        int index;

        if (!FUNC10(table->clsid, mxattributes_support_data))
        {
            table++;
            continue;
        }

        hr = FUNC0(table->clsid, NULL, CLSCTX_INPROC_SERVER,
            &IID_IMXAttributes, (void**)&mxattr);
        FUNC1(hr, S_OK);

        hr = FUNC2(mxattr, &IID_ISAXAttributes, (void**)&saxattr);
        FUNC1(hr, S_OK);

        hr = FUNC6(saxattr, NULL, 0, NULL, 0, &index);
        FUNC1(hr, E_INVALIDARG);

        /* add some ambiguos attribute names */
        hr = FUNC4(mxattr, FUNC8("uri"), FUNC8("localname"),
            FUNC8("a:localname"), FUNC8(""), FUNC8("value"));
        FUNC1(hr, S_OK);
        hr = FUNC4(mxattr, FUNC8("uri"), FUNC8("localname"),
            FUNC8("b:localname"), FUNC8(""), FUNC8("value"));
        FUNC1(hr, S_OK);

        index = -1;
        hr = FUNC6(saxattr, uriW, FUNC11(uriW), localnameW, FUNC11(localnameW), &index);
        FUNC1(hr, S_OK);
        FUNC12(index == 0, "%s: got index %d\n", table->name, index);

        index = -1;
        hr = FUNC6(saxattr, uri1W, FUNC11(uri1W), localnameW, FUNC11(localnameW), &index);
        FUNC1(hr, E_INVALIDARG);
        FUNC12(index == -1, "%s: got index %d\n", table->name, index);

        index = -1;
        hr = FUNC6(saxattr, uriW, FUNC11(uriW), localname1W, FUNC11(localname1W), &index);
        FUNC1(hr, E_INVALIDARG);
        FUNC12(index == -1, "%s: got index %d\n", table->name, index);

        if (FUNC7(table->clsid, &CLSID_SAXAttributes) ||
            FUNC7(table->clsid, &CLSID_SAXAttributes30))
        {
            hr = FUNC6(saxattr, NULL, 0, NULL, 0, NULL);
            FUNC1(hr, E_POINTER);

            hr = FUNC6(saxattr, uriW, FUNC11(uriW), localname1W, FUNC11(localname1W), NULL);
            FUNC1(hr, E_POINTER);
        }
        else
        {
            hr = FUNC6(saxattr, NULL, 0, NULL, 0, NULL);
            FUNC1(hr, E_INVALIDARG);

            hr = FUNC6(saxattr, uriW, FUNC11(uriW), localname1W, FUNC11(localname1W), NULL);
            FUNC1(hr, E_INVALIDARG);
        }

        hr = FUNC6(saxattr, uriW, FUNC11(uriW), NULL, 0, &index);
        FUNC1(hr, E_INVALIDARG);

        hr = FUNC6(saxattr, NULL, 0, localname1W, FUNC11(localname1W), &index);
        FUNC1(hr, E_INVALIDARG);

        table++;

        FUNC5(saxattr);
        FUNC3(mxattr);
        FUNC9();
    }
}