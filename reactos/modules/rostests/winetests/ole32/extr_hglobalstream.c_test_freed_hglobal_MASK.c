#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  teststring ;
typedef  int /*<<< orphan*/  buffer ;
typedef  int ULONG ;
struct TYPE_3__ {int QuadPart; } ;
typedef  TYPE_1__ ULARGE_INTEGER ;
typedef  int /*<<< orphan*/  IStream ;
typedef  int HRESULT ;
typedef  int /*<<< orphan*/ * HGLOBAL ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int E_OUTOFMEMORY ; 
 int /*<<< orphan*/  FALSE ; 
 int GMEM_DDESHARE ; 
 int GMEM_MOVEABLE ; 
 int GMEM_NODISCARD ; 
 int FUNC1 () ; 
 int /*<<< orphan*/ * FUNC2 (int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 char* FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (int /*<<< orphan*/ *,char*,int,int*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int FUNC8 (int /*<<< orphan*/ *,TYPE_1__) ; 
 int FUNC9 (int /*<<< orphan*/ *,char*,int,int*) ; 
 scalar_t__ FUNC10 (int) ; 
 int /*<<< orphan*/  FUNC11 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC12 (int,char*,...) ; 
 int /*<<< orphan*/  FUNC13 (int,char*) ; 
 int /*<<< orphan*/  FUNC14 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC15 (char*,char const*) ; 
 scalar_t__ FUNC16 (char const*) ; 

__attribute__((used)) static void FUNC17(void)
{
    static const char teststring[] = "this is a test string";
    HRESULT hr;
    IStream *pStream;
    HGLOBAL hglobal;
    char *p;
    char buffer[sizeof(teststring) + 8];
    ULARGE_INTEGER ull;
    ULONG read, written;

    hglobal = FUNC2(GMEM_DDESHARE|GMEM_NODISCARD|GMEM_MOVEABLE, FUNC16(teststring) + 1);
    FUNC12(hglobal != NULL, "GlobalAlloc failed with error %d\n", FUNC1());
    p = FUNC4(hglobal);
    FUNC15(p, teststring);
    FUNC5(hglobal);

    hr = FUNC0(hglobal, FALSE, &pStream);
    FUNC13(hr, "CreateStreamOnHGlobal");

    hr = FUNC6(pStream, buffer, sizeof(buffer), &read);
    FUNC13(hr, "IStream_Read");
    FUNC12(!FUNC14(buffer, teststring), "buffer data %s differs\n", buffer);
    FUNC12(read == sizeof(teststring) ||
       FUNC10(read == ((sizeof(teststring) + 3) & ~3)), /* win9x rounds the size */
       "read should be sizeof(teststring) instead of %d\n", read);

    FUNC3(hglobal);

    FUNC11(buffer, 0, sizeof(buffer));
    read = -1;
    hr = FUNC6(pStream, buffer, sizeof(buffer), &read);
    FUNC13(hr, "IStream_Read");
    FUNC12(buffer[0] == 0, "buffer data should be untouched\n");
    FUNC12(read == 0, "read should be 0 instead of %d\n", read);

    ull.QuadPart = sizeof(buffer);
    hr = FUNC8(pStream, ull);
    FUNC12(hr == E_OUTOFMEMORY, "IStream_SetSize with invalid HGLOBAL should return E_OUTOFMEMORY instead of 0x%08x\n", hr);

    hr = FUNC9(pStream, buffer, sizeof(buffer), &written);
    FUNC12(hr == E_OUTOFMEMORY, "IStream_Write with invalid HGLOBAL should return E_OUTOFMEMORY instead of 0x%08x\n", hr);
    FUNC12(written == 0, "written should be 0 instead of %d\n", written);

    FUNC7(pStream);
}