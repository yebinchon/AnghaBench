
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int msft_header ;
typedef int WCHAR ;
struct TYPE_4__ {int wLibFlags; } ;
typedef TYPE_1__ TLIBATTR ;
typedef int LCID ;
typedef int ITypeLib ;
typedef int ICreateTypeLib2 ;
typedef int HRESULT ;
typedef scalar_t__ HANDLE ;
typedef int DWORD ;


 int CP_ACP ;
 int CloseHandle (scalar_t__) ;
 scalar_t__ CreateFileA (char*,int ,int ,int *,int ,int ,int ) ;
 int CreateTypeLib2 (int ,int *,int **) ;
 int DeleteFileA (char*) ;
 int GENERIC_READ ;
 int GetTempFileNameA (char*,char*,int ,char*) ;
 int ICreateTypeLib2_QueryInterface (int *,int *,void**) ;
 int ICreateTypeLib2_Release (int *) ;
 int ICreateTypeLib2_SaveAllChanges (int *) ;
 int ICreateTypeLib2_SetLcid (int *,int) ;
 int ICreateTypeLib2_SetVersion (int *,int,int) ;
 int IID_ITypeLib ;
 scalar_t__ INVALID_HANDLE_VALUE ;
 int ITypeLib_GetLibAttr (int *,TYPE_1__**) ;
 int ITypeLib_Release (int *) ;
 int ITypeLib_ReleaseTLibAttr (int *,TYPE_1__*) ;
 int LIBFLAG_FHASDISKIMAGE ;
 int LoadTypeLib (int *,int **) ;
 int MAX_PATH ;
 int MultiByteToWideChar (int ,int ,char*,int,int *,int) ;
 int OPEN_EXISTING ;
 int ReadFile (scalar_t__,int*,int,int*,int *) ;
 int SYS_WIN32 ;
 int S_OK ;
 int ok (int,char*,...) ;

__attribute__((used)) static void test_create_typelib_lcid(LCID lcid)
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

    GetTempFileNameA( ".", "tlb", 0, filename );
    MultiByteToWideChar(CP_ACP, 0, filename, -1, name, MAX_PATH);

    hr = CreateTypeLib2(SYS_WIN32, name, &tl);
    ok(hr == S_OK, "got %08x\n", hr);

    hr = ICreateTypeLib2_QueryInterface(tl, &IID_ITypeLib, (void**)&typelib);
    ok(hr == S_OK, "got %08x\n", hr);

    hr = ITypeLib_GetLibAttr(typelib, &attr);
    ok(hr == S_OK, "got %08x\n", hr);
    ok(attr->wLibFlags == 0, "flags 0x%x\n", attr->wLibFlags);
    ITypeLib_ReleaseTLibAttr(typelib, attr);

    hr = ICreateTypeLib2_SetLcid(tl, lcid);
    ok(hr == S_OK, "got %08x\n", hr);

    hr = ICreateTypeLib2_SetVersion(tl, 3, 4);
    ok(hr == S_OK, "got %08x\n", hr);

    hr = ICreateTypeLib2_SaveAllChanges(tl);
    ok(hr == S_OK, "got %08x\n", hr);

    hr = ITypeLib_GetLibAttr(typelib, &attr);
    ok(hr == S_OK, "got %08x\n", hr);
    ok(attr->wLibFlags == 0, "flags 0x%x\n", attr->wLibFlags);
    ITypeLib_ReleaseTLibAttr(typelib, attr);

    ITypeLib_Release(typelib);
    ICreateTypeLib2_Release(tl);

    file = CreateFileA( filename, GENERIC_READ, 0, ((void*)0), OPEN_EXISTING, 0, 0 );
    ok( file != INVALID_HANDLE_VALUE, "file creation failed\n" );

    ReadFile( file, msft_header, sizeof(msft_header), &read, ((void*)0) );
    ok(read == sizeof(msft_header), "read %d\n", read);
    CloseHandle( file );

    ok(msft_header[0] == 0x5446534d, "got %08x\n", msft_header[0]);
    ok(msft_header[1] == 0x00010002, "got %08x\n", msft_header[1]);
    ok(msft_header[2] == 0xffffffff, "got %08x\n", msft_header[2]);
    ok(msft_header[3] == (lcid ? lcid : 0x409), "got %08x (lcid %08x)\n", msft_header[3], lcid);
    ok(msft_header[4] == lcid, "got %08x (lcid %08x)\n", msft_header[4], lcid);
    ok(msft_header[6] == 0x00040003, "got %08x\n", msft_header[6]);
    ok(msft_header[7] == 0, "got %08x\n", msft_header[7]);


    hr = LoadTypeLib(name, &typelib);
    ok(hr == S_OK, "got %08x\n", hr);

    hr = ITypeLib_GetLibAttr(typelib, &attr);
    ok(hr == S_OK, "got %08x\n", hr);
    ok(attr->wLibFlags == LIBFLAG_FHASDISKIMAGE, "flags 0x%x\n", attr->wLibFlags);
    ITypeLib_ReleaseTLibAttr(typelib, attr);
    ITypeLib_Release(typelib);

    DeleteFileA(filename);
}
