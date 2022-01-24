#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  test_string ;
typedef  char WCHAR ;
typedef  int ULONG ;
struct TYPE_11__ {int cbSize; int /*<<< orphan*/ * pBlobData; } ;
struct TYPE_9__ {char* pwszVal; char* pszVal; } ;
struct TYPE_10__ {void* vt; TYPE_1__ u; } ;
typedef  TYPE_2__ PROPVARIANT ;
typedef  int /*<<< orphan*/  IMimeInternational ;
typedef  int /*<<< orphan*/  HRESULT ;
typedef  int /*<<< orphan*/  BYTE ;
typedef  TYPE_3__ BLOB ;

/* Variables and functions */
 int CP_UNICODE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int,int,TYPE_3__*,TYPE_3__*,int*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int,int,TYPE_2__*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*) ; 
 int /*<<< orphan*/  S_OK ; 
 void* VT_LPSTR ; 
 void* VT_LPWSTR ; 
 int /*<<< orphan*/  FUNC6 (char*,char*) ; 
 int /*<<< orphan*/  FUNC7 (int,char*,...) ; 
 int /*<<< orphan*/  FUNC8 (char*,char*) ; 

__attribute__((used)) static void FUNC9(void)
{
    IMimeInternational *internat;
    HRESULT hr;
    BLOB src, dst;
    ULONG read;
    PROPVARIANT prop_in, prop_out;
    static char test_string[] = "test string";
    static WCHAR test_stringW[] = {'t','e','s','t',' ','s','t','r','i','n','g',0};

    hr = FUNC4(&internat);
    FUNC7(hr == S_OK, "ret %08x\n", hr);

    src.pBlobData = (BYTE*)test_string;
    src.cbSize = sizeof(test_string);
    hr = FUNC1(internat, 1252, 28591, &src, &dst, &read);
    FUNC7(hr == S_OK, "ret %08x\n", hr);
    FUNC7(read == sizeof(test_string), "got %d\n", read);
    FUNC7(dst.cbSize == sizeof(test_string), "got %d\n", dst.cbSize);
    FUNC0(dst.pBlobData);

    src.cbSize = 2;
    hr = FUNC1(internat, 1252, 28591, &src, &dst, &read);
    FUNC7(hr == S_OK, "ret %08x\n", hr);
    FUNC7(read == 2, "got %d\n", read);
    FUNC7(dst.cbSize == 2, "got %d\n", dst.cbSize);
    FUNC0(dst.pBlobData);

    prop_in.vt = VT_LPWSTR;
    prop_in.u.pwszVal = test_stringW;
    hr = FUNC2(internat, CP_UNICODE, 1252, &prop_in, &prop_out);
    FUNC7(hr == S_OK, "ret %08x\n", hr);
    FUNC7(prop_out.vt == VT_LPSTR, "got %d\n", prop_out.vt);
    FUNC7(!FUNC8(prop_out.u.pszVal, test_string), "got %s\n", prop_out.u.pszVal);
    FUNC5(&prop_out);

    /* If in.vt is VT_LPWSTR, ignore cpiSrc */
    prop_in.vt = VT_LPWSTR;
    prop_in.u.pwszVal = test_stringW;
    hr = FUNC2(internat, 28591, 1252, &prop_in, &prop_out);
    FUNC7(hr == S_OK, "ret %08x\n", hr);
    FUNC7(prop_out.vt == VT_LPSTR, "got %d\n", prop_out.vt);
    FUNC7(!FUNC8(prop_out.u.pszVal, test_string), "got %s\n", prop_out.u.pszVal);
    FUNC5(&prop_out);

    prop_in.vt = VT_LPSTR;
    prop_in.u.pszVal = test_string;
    hr = FUNC2(internat, 28591, CP_UNICODE, &prop_in, &prop_out);
    FUNC7(hr == S_OK, "ret %08x\n", hr);
    FUNC7(prop_out.vt == VT_LPWSTR, "got %d\n", prop_out.vt);
    FUNC7(!FUNC6(prop_out.u.pwszVal, test_stringW), "mismatched strings\n");
    FUNC5(&prop_out);

    /* If in.vt is VT_LPSTR and cpiSrc is CP_UNICODE, use another multibyte codepage (probably GetACP()) */
    prop_in.vt = VT_LPSTR;
    prop_in.u.pszVal = test_string;
    hr = FUNC2(internat, CP_UNICODE, CP_UNICODE, &prop_in, &prop_out);
    FUNC7(hr == S_OK, "ret %08x\n", hr);
    FUNC7(prop_out.vt == VT_LPWSTR, "got %d\n", prop_out.vt);
    FUNC7(!FUNC6(prop_out.u.pwszVal, test_stringW), "mismatched strings\n");
    FUNC5(&prop_out);

    FUNC3(internat);
}