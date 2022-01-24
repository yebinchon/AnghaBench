#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  msft_header ;
typedef  int /*<<< orphan*/  WCHAR ;
struct TYPE_4__ {int wLibFlags; } ;
typedef  TYPE_1__ TLIBATTR ;
typedef  int LCID ;
typedef  int /*<<< orphan*/  ITypeLib ;
typedef  int /*<<< orphan*/  ICreateTypeLib2 ;
typedef  int HRESULT ;
typedef  scalar_t__ HANDLE ;
typedef  int DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  CP_ACP ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  GENERIC_READ ; 
 int /*<<< orphan*/  FUNC4 (char*,char*,int /*<<< orphan*/ ,char*) ; 
 int FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,void**) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int FUNC7 (int /*<<< orphan*/ *) ; 
 int FUNC8 (int /*<<< orphan*/ *,int) ; 
 int FUNC9 (int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  IID_ITypeLib ; 
 scalar_t__ INVALID_HANDLE_VALUE ; 
 int FUNC10 (int /*<<< orphan*/ *,TYPE_1__**) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int LIBFLAG_FHASDISKIMAGE ; 
 int FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int MAX_PATH ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  OPEN_EXISTING ; 
 int /*<<< orphan*/  FUNC15 (scalar_t__,int*,int,int*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  SYS_WIN32 ; 
 int S_OK ; 
 int /*<<< orphan*/  FUNC16 (int,char*,...) ; 

__attribute__((used)) static void FUNC17(LCID lcid)
{
    char filename[MAX_PATH];
    WCHAR name[MAX_PATH];
    HRESULT hr;
    ICreateTypeLib2 *tl;
    HANDLE file;
    DWORD msft_header[8];
    ITypeLib *typelib;
    TLIBATTR *attr;
    DWORD read;

    FUNC4( ".", "tlb", 0, filename );
    FUNC14(CP_ACP, 0, filename, -1, name, MAX_PATH);

    hr = FUNC2(SYS_WIN32, name, &tl);
    FUNC16(hr == S_OK, "got %08x\n", hr);

    hr = FUNC5(tl, &IID_ITypeLib, (void**)&typelib);
    FUNC16(hr == S_OK, "got %08x\n", hr);

    hr = FUNC10(typelib, &attr);
    FUNC16(hr == S_OK, "got %08x\n", hr);
    FUNC16(attr->wLibFlags == 0, "flags 0x%x\n", attr->wLibFlags);
    FUNC12(typelib, attr);

    hr = FUNC8(tl, lcid);
    FUNC16(hr == S_OK, "got %08x\n", hr);

    hr = FUNC9(tl, 3, 4);
    FUNC16(hr == S_OK, "got %08x\n", hr);

    hr = FUNC7(tl);
    FUNC16(hr == S_OK, "got %08x\n", hr);

    hr = FUNC10(typelib, &attr);
    FUNC16(hr == S_OK, "got %08x\n", hr);
    FUNC16(attr->wLibFlags == 0, "flags 0x%x\n", attr->wLibFlags);
    FUNC12(typelib, attr);

    FUNC11(typelib);
    FUNC6(tl);

    file = FUNC1( filename, GENERIC_READ, 0, NULL, OPEN_EXISTING, 0, 0 );
    FUNC16( file != INVALID_HANDLE_VALUE, "file creation failed\n" );

    FUNC15( file, msft_header, sizeof(msft_header), &read, NULL );
    FUNC16(read == sizeof(msft_header), "read %d\n", read);
    FUNC0( file );

    FUNC16(msft_header[0] == 0x5446534d, "got %08x\n", msft_header[0]);
    FUNC16(msft_header[1] == 0x00010002, "got %08x\n", msft_header[1]);
    FUNC16(msft_header[2] == 0xffffffff, "got %08x\n", msft_header[2]);
    FUNC16(msft_header[3] == (lcid ? lcid : 0x409), "got %08x (lcid %08x)\n", msft_header[3], lcid);
    FUNC16(msft_header[4] == lcid, "got %08x (lcid %08x)\n", msft_header[4], lcid);
    FUNC16(msft_header[6] == 0x00040003, "got %08x\n", msft_header[6]);
    FUNC16(msft_header[7] == 0, "got %08x\n", msft_header[7]);

    /* check flags after loading */
    hr = FUNC13(name, &typelib);
    FUNC16(hr == S_OK, "got %08x\n", hr);

    hr = FUNC10(typelib, &attr);
    FUNC16(hr == S_OK, "got %08x\n", hr);
    FUNC16(attr->wLibFlags == LIBFLAG_FHASDISKIMAGE, "flags 0x%x\n", attr->wLibFlags);
    FUNC12(typelib, attr);
    FUNC11(typelib);

    FUNC3(filename);
}