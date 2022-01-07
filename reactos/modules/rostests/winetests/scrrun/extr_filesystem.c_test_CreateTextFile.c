
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ WCHAR ;
typedef int ITextStream ;
typedef int HRESULT ;
typedef int HANDLE ;
typedef scalar_t__* BSTR ;
typedef int BOOL ;


 int ARRAY_SIZE (scalar_t__*) ;
 int CLSID_TextStream ;
 int CP_ACP ;
 int CTL_E_BADFILEMODE ;
 int CTL_E_FILEALREADYEXISTS ;
 int CTL_E_PATHNOTFOUND ;
 int CloseHandle (int ) ;
 int CreateDirectoryW (scalar_t__*,int *) ;
 int CreateFileW (scalar_t__*,int ,int ,int *,int ,int ,int *) ;
 int DeleteFileW (scalar_t__*) ;
 int E_VAR_NOT_SET ;
 int FILE_ATTRIBUTE_NORMAL ;
 int ForReading ;
 int GENERIC_READ ;
 int GetLastError () ;
 int IFileSystem3_CreateTextFile (int ,scalar_t__*,int ,int ,int **) ;
 int IFileSystem3_OpenTextFile (int ,scalar_t__*,int ,int ,int ,int **) ;
 int INVALID_HANDLE_VALUE ;
 int ITextStream_Close (int *) ;
 int ITextStream_Read (int *,int,scalar_t__**) ;
 int ITextStream_ReadAll (int *,scalar_t__**) ;
 int ITextStream_Release (int *) ;
 int MAX_PATH ;
 int MultiByteToWideChar (int ,int ,int ,int,scalar_t__*,int ) ;
 int OPEN_EXISTING ;
 int RemoveDirectoryW (scalar_t__*) ;
 int S_FALSE ;
 int S_OK ;
 scalar_t__* SysAllocString (scalar_t__*) ;
 int SysFreeString (scalar_t__*) ;
 int TristateFalse ;
 int VARIANT_FALSE ;
 int VARIANT_TRUE ;
 scalar_t__ broken (int) ;
 int fs3 ;
 int get_temp_filepath (int ,scalar_t__*,scalar_t__*) ;
 int lstrcmpW (scalar_t__*,scalar_t__*) ;
 int ok (int,char*,int,...) ;
 int test_provideclassinfo (int *,int *) ;
 int testfileW ;
 int utf16bom ;
 int wine_dbgstr_w (scalar_t__*) ;

__attribute__((used)) static void test_CreateTextFile(void)
{
    WCHAR pathW[MAX_PATH], dirW[MAX_PATH], buffW[10];
    ITextStream *stream;
    BSTR nameW, str;
    HANDLE file;
    HRESULT hr;
    BOOL ret;

    get_temp_filepath(testfileW, pathW, dirW);


    nameW = SysAllocString(pathW);
    hr = IFileSystem3_CreateTextFile(fs3, nameW, VARIANT_FALSE, VARIANT_FALSE, &stream);
    ok(hr == CTL_E_PATHNOTFOUND, "got 0x%08x\n", hr);

    ret = CreateDirectoryW(dirW, ((void*)0));
    ok(ret, "got %d, %d\n", ret, GetLastError());

    hr = IFileSystem3_CreateTextFile(fs3, nameW, VARIANT_FALSE, VARIANT_FALSE, &stream);
    ok(hr == S_OK, "got 0x%08x\n", hr);

    test_provideclassinfo(stream, &CLSID_TextStream);

    hr = ITextStream_Read(stream, 1, &str);
    ok(hr == CTL_E_BADFILEMODE, "got 0x%08x\n", hr);

    hr = ITextStream_Close(stream);
    ok(hr == S_OK, "got 0x%08x\n", hr);

    hr = ITextStream_Read(stream, 1, &str);
    ok(hr == CTL_E_BADFILEMODE || hr == E_VAR_NOT_SET, "got 0x%08x\n", hr);

    hr = ITextStream_Close(stream);
    ok(hr == S_FALSE || hr == E_VAR_NOT_SET, "got 0x%08x\n", hr);

    ITextStream_Release(stream);


    file = CreateFileW(pathW, GENERIC_READ, 0, ((void*)0), OPEN_EXISTING, FILE_ATTRIBUTE_NORMAL, ((void*)0));
    ok(file != INVALID_HANDLE_VALUE, "got %p\n", file);
    CloseHandle(file);


    hr = IFileSystem3_CreateTextFile(fs3, nameW, VARIANT_FALSE, VARIANT_FALSE, &stream);
    ok(hr == CTL_E_FILEALREADYEXISTS, "got 0x%08x\n", hr);


    hr = IFileSystem3_CreateTextFile(fs3, nameW, VARIANT_TRUE, VARIANT_FALSE, &stream);
    ok(hr == S_OK, "got 0x%08x\n", hr);
    ITextStream_Release(stream);


    hr = IFileSystem3_CreateTextFile(fs3, nameW, VARIANT_TRUE, VARIANT_TRUE, &stream);
    ok(hr == S_OK, "got 0x%08x\n", hr);
    ITextStream_Release(stream);



    buffW[0] = 0;
    MultiByteToWideChar(CP_ACP, 0, utf16bom, -1, buffW, ARRAY_SIZE(buffW));

    hr = IFileSystem3_OpenTextFile(fs3, nameW, ForReading, VARIANT_FALSE, TristateFalse, &stream);
    ok(hr == S_OK, "got 0x%08x\n", hr);
    hr = ITextStream_ReadAll(stream, &str);
    ok(hr == S_FALSE || broken(hr == S_OK) , "got 0x%08x\n", hr);
    ok(!lstrcmpW(str, buffW), "got %s, expected %s\n", wine_dbgstr_w(str), wine_dbgstr_w(buffW));
    SysFreeString(str);
    ITextStream_Release(stream);

    DeleteFileW(nameW);
    RemoveDirectoryW(dirW);
    SysFreeString(nameW);
}
