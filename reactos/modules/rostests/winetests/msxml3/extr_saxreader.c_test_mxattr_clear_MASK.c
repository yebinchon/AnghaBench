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
typedef  void WCHAR ;
typedef  int /*<<< orphan*/  ISAXAttributes ;
typedef  int /*<<< orphan*/  IMXAttributes ;
typedef  int /*<<< orphan*/  HRESULT ;

/* Variables and functions */
 int /*<<< orphan*/  CLSCTX_INPROC_SERVER ; 
 int /*<<< orphan*/  CLSID_SAXAttributes ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,void**) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  E_INVALIDARG ; 
 int /*<<< orphan*/  E_POINTER ; 
 int /*<<< orphan*/  IID_IMXAttributes ; 
 int /*<<< orphan*/  IID_ISAXAttributes ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,void**) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,void const**,int*) ; 
 int /*<<< orphan*/  S_OK ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 (void const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int,char*,void const*) ; 
 void const* FUNC13 (void const*) ; 

__attribute__((used)) static void FUNC14(void)
{
    ISAXAttributes *saxattr;
    IMXAttributes *mxattr;
    const WCHAR *ptr;
    HRESULT hr;
    int len;

    hr = FUNC0(&CLSID_SAXAttributes, NULL, CLSCTX_INPROC_SERVER,
        &IID_IMXAttributes, (void**)&mxattr);
    FUNC1(hr, S_OK);

    hr = FUNC2(mxattr, &IID_ISAXAttributes, (void**)&saxattr);
    FUNC1(hr, S_OK);

    hr = FUNC8(saxattr, 0, NULL, NULL);
    FUNC1(hr, E_INVALIDARG);

    hr = FUNC8(saxattr, 0, &ptr, &len);
    FUNC1(hr, E_INVALIDARG);

    hr = FUNC5(mxattr);
    FUNC1(hr, S_OK);

    hr = FUNC4(mxattr, FUNC9("uri"), FUNC9("local"),
        FUNC9("qname"), FUNC9("type"), FUNC9("value"));
    FUNC1(hr, S_OK);

    len = -1;
    hr = FUNC7(saxattr, &len);
    FUNC1(hr, S_OK);
    FUNC12(len == 1, "got %d\n", len);

    len = -1;
    hr = FUNC8(saxattr, 0, NULL, &len);
    FUNC1(hr, E_POINTER);
    FUNC12(len == -1, "got %d\n", len);

    ptr = (void*)0xdeadbeef;
    hr = FUNC8(saxattr, 0, &ptr, NULL);
    FUNC1(hr, E_POINTER);
    FUNC12(ptr == (void*)0xdeadbeef, "got %p\n", ptr);

    len = 0;
    hr = FUNC8(saxattr, 0, &ptr, &len);
    FUNC1(hr, S_OK);
    FUNC12(len == 5, "got %d\n", len);
    FUNC12(!FUNC11(ptr, FUNC9("qname")), "got %s\n", FUNC13(ptr));

    hr = FUNC5(mxattr);
    FUNC1(hr, S_OK);

    len = -1;
    hr = FUNC7(saxattr, &len);
    FUNC1(hr, S_OK);
    FUNC12(len == 0, "got %d\n", len);

    len = -1;
    ptr = (void*)0xdeadbeef;
    hr = FUNC8(saxattr, 0, &ptr, &len);
    FUNC1(hr, E_INVALIDARG);
    FUNC12(len == -1, "got %d\n", len);
    FUNC12(ptr == (void*)0xdeadbeef, "got %p\n", ptr);

    FUNC3(mxattr);
    FUNC6(saxattr);
    FUNC10();
}