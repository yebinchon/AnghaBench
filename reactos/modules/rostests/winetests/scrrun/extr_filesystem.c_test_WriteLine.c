
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int buffW ;
typedef int buffA ;
typedef char WCHAR ;
typedef int ITextStream ;
typedef scalar_t__ HRESULT ;
typedef scalar_t__ HANDLE ;
typedef size_t DWORD ;
typedef int BSTR ;
typedef int BOOL ;


 int ARRAY_SIZE (char*) ;
 int CP_ACP ;
 int CloseHandle (scalar_t__) ;
 int CreateDirectoryW (char*,int *) ;
 scalar_t__ CreateFileW (char*,int ,int ,int *,int ,int ,int *) ;
 int DeleteFileW (int ) ;
 int FILE_ATTRIBUTE_NORMAL ;
 int GENERIC_READ ;
 int GetLastError () ;
 scalar_t__ IFileSystem3_CreateTextFile (int ,int ,int ,int ,int **) ;
 scalar_t__ INVALID_HANDLE_VALUE ;
 int ITextStream_Release (int *) ;
 scalar_t__ ITextStream_WriteLine (int *,int ) ;
 int MAX_PATH ;
 size_t MultiByteToWideChar (int ,int ,char*,size_t,char*,int ) ;
 int OPEN_EXISTING ;
 int ReadFile (scalar_t__,char*,int,size_t*,int *) ;
 int RemoveDirectoryW (char*) ;
 scalar_t__ S_OK ;
 int SysAllocString (char*) ;
 int SysFreeString (int ) ;
 int VARIANT_FALSE ;
 int VARIANT_TRUE ;
 int crlfW ;
 int fs3 ;
 int get_temp_filepath (int ,char*,char*) ;
 int lstrcatW (char*,int ) ;
 int lstrcmpW (char*,char*) ;
 int lstrcpyW (char*,int ) ;
 int ok (int,char*,int,...) ;
 int testfileW ;
 int wine_dbgstr_w (char*) ;

__attribute__((used)) static void test_WriteLine(void)
{
    WCHAR pathW[MAX_PATH], dirW[MAX_PATH];
    WCHAR buffW[MAX_PATH], buff2W[MAX_PATH];
    char buffA[MAX_PATH];
    ITextStream *stream;
    DWORD r, len;
    HANDLE file;
    BSTR nameW;
    HRESULT hr;
    BOOL ret;

    get_temp_filepath(testfileW, pathW, dirW);

    ret = CreateDirectoryW(dirW, ((void*)0));
    ok(ret, "got %d, %d\n", ret, GetLastError());


    nameW = SysAllocString(pathW);
    hr = IFileSystem3_CreateTextFile(fs3, nameW, VARIANT_FALSE, VARIANT_FALSE, &stream);
    ok(hr == S_OK, "got 0x%08x\n", hr);

    hr = ITextStream_WriteLine(stream, nameW);
    ok(hr == S_OK, "got 0x%08x\n", hr);
    ITextStream_Release(stream);


    file = CreateFileW(pathW, GENERIC_READ, 0, ((void*)0), OPEN_EXISTING, FILE_ATTRIBUTE_NORMAL, ((void*)0));
    ok(file != INVALID_HANDLE_VALUE, "got %p\n", file);
    r = 0;
    ret = ReadFile(file, buffA, sizeof(buffA), &r, ((void*)0));
    ok(ret && r, "read %d, got %d, %d\n", r, ret, GetLastError());

    len = MultiByteToWideChar(CP_ACP, 0, buffA, r, buffW, ARRAY_SIZE(buffW));
    buffW[len] = 0;
    lstrcpyW(buff2W, nameW);
    lstrcatW(buff2W, crlfW);
    ok(!lstrcmpW(buff2W, buffW), "got %s, expected %s\n", wine_dbgstr_w(buffW), wine_dbgstr_w(buff2W));
    CloseHandle(file);
    DeleteFileW(nameW);


    hr = IFileSystem3_CreateTextFile(fs3, nameW, VARIANT_FALSE, VARIANT_TRUE, &stream);
    ok(hr == S_OK, "got 0x%08x\n", hr);

    hr = ITextStream_WriteLine(stream, nameW);
    ok(hr == S_OK, "got 0x%08x\n", hr);
    ITextStream_Release(stream);


    file = CreateFileW(pathW, GENERIC_READ, 0, ((void*)0), OPEN_EXISTING, FILE_ATTRIBUTE_NORMAL, ((void*)0));
    ok(file != INVALID_HANDLE_VALUE, "got %p\n", file);
    r = 0;
    ret = ReadFile(file, buffW, sizeof(buffW), &r, ((void*)0));
    ok(ret && r, "read %d, got %d, %d\n", r, ret, GetLastError());
    buffW[r/sizeof(WCHAR)] = 0;

    buff2W[0] = 0xfeff;
    buff2W[1] = 0;
    lstrcatW(buff2W, nameW);
    lstrcatW(buff2W, crlfW);
    ok(!lstrcmpW(buff2W, buffW), "got %s, expected %s\n", wine_dbgstr_w(buffW), wine_dbgstr_w(buff2W));
    CloseHandle(file);
    DeleteFileW(nameW);

    RemoveDirectoryW(dirW);
    SysFreeString(nameW);
}
