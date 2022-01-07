
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WCHAR ;
typedef int * ULONG ;
typedef int IStream ;
typedef int * HRESULT ;
typedef int DWORD ;
typedef char CHAR ;
typedef int BOOL ;


 int CP_ACP ;
 int DeleteFileA (char*) ;
 int ERROR_ACCESS_DENIED ;
 int ERROR_FILE_EXISTS ;
 int ERROR_FILE_NOT_FOUND ;
 int ERROR_INVALID_PARAMETER ;
 int ERROR_PATH_NOT_FOUND ;
 int * E_INVALIDARG ;
 int FALSE ;
 int * GetLastError () ;
 int GetTempPathA (int,char*) ;
 int * HRESULT_FROM_WIN32 (int ) ;
 int * IStream_Release (int *) ;
 int MAX_PATH ;
 int MultiByteToWideChar (int ,int ,char*,int,int *,int) ;
 int * SHCreateStreamOnFileEx (int *,int,int ,int ,int *,int **) ;
 int STGM_CREATE ;
 int STGM_FAILIFTHERE ;
 int STGM_READ ;
 int STGM_TRANSACTED ;
 int * S_OK ;
 int Sleep (int) ;
 int TRUE ;
 scalar_t__ broken (int) ;
 int lstrcatA (char*,char const*) ;
 int ok (int,char*,...) ;
 int skip (char*) ;
 int test_IStream_invalid_operations (int *,int) ;
 int test_stream_qi (int *) ;
 int trace (char*,int,int) ;
 int win_skip (char*) ;
 int winetest_debug ;

__attribute__((used)) static void test_SHCreateStreamOnFileEx(DWORD mode, DWORD stgm)
{
    IStream * stream;
    IStream * template = ((void*)0);
    HRESULT ret;
    ULONG refcount;
    WCHAR test_file[MAX_PATH];
    CHAR test_fileA[MAX_PATH];
    static const CHAR testEx_txt[] = "\\testEx.txt";
    BOOL delret;

    if (winetest_debug > 1)
        trace("SHCreateStreamOnFileEx: testing mode %d, STGM flags %08x\n", mode, stgm);


    GetTempPathA(MAX_PATH, test_fileA);
    lstrcatA(test_fileA, testEx_txt);
    MultiByteToWideChar(CP_ACP, 0, test_fileA, -1, test_file, MAX_PATH);



    if (0)
    {

        stream = ((void*)0);
        ret = SHCreateStreamOnFileEx(((void*)0), mode, 0, FALSE, ((void*)0), &stream);
        ok(ret == HRESULT_FROM_WIN32(ERROR_PATH_NOT_FOUND) ||
           ret == E_INVALIDARG ,
          "SHCreateStreamOnFileEx: expected HRESULT_FROM_WIN32(ERROR_PATH_NOT_FOUND) or E_INVALIDARG, got 0x%08x\n", ret);
        ok(stream == ((void*)0), "SHCreateStreamOnFileEx: expected a NULL IStream object, got %p\n", stream);
    }

    stream = ((void*)0);
    ret = SHCreateStreamOnFileEx(test_file, mode, 0, FALSE, template, &stream);
    if (ret == HRESULT_FROM_WIN32(ERROR_ACCESS_DENIED)) {
        win_skip("File probably locked by Anti-Virus/Spam software, trying again\n");
        Sleep(1000);
        ret = SHCreateStreamOnFileEx(test_file, mode, 0, FALSE, template, &stream);
    }
    ok( ret == HRESULT_FROM_WIN32(ERROR_FILE_NOT_FOUND) ||
        ret == HRESULT_FROM_WIN32(ERROR_INVALID_PARAMETER),
        "SHCreateStreamOnFileEx: expected HRESULT_FROM_WIN32(ERROR_FILE_NOT_FOUND) or "
        "HRESULT_FROM_WIN32(ERROR_INVALID_PARAMETER), got 0x%08x\n", ret);

    ok(stream == ((void*)0), "SHCreateStreamOnFileEx: expected a NULL IStream object, got %p\n", stream);

    if (0)
    {

        ret = SHCreateStreamOnFileEx(test_file, mode, 0, FALSE, ((void*)0), ((void*)0));
        ok(ret == E_INVALIDARG, "SHCreateStreamOnFileEx: expected E_INVALIDARG, got 0x%08x\n", ret);
    }



    stream = ((void*)0);
    ret = SHCreateStreamOnFileEx(test_file, mode | STGM_FAILIFTHERE | stgm, 0, FALSE, ((void*)0), &stream);
    if ((stgm & STGM_TRANSACTED) == STGM_TRANSACTED && mode == STGM_READ) {
        ok(ret == HRESULT_FROM_WIN32(ERROR_FILE_NOT_FOUND) || ret == E_INVALIDARG ,
          "SHCreateStreamOnFileEx: expected E_INVALIDARG or HRESULT_FROM_WIN32(ERROR_FILE_NOT_FOUND), got 0x%08x\n", ret);

        if (ret == E_INVALIDARG) {
            skip("SHCreateStreamOnFileEx: STGM_TRANSACTED not supported in this configuration.\n");
            return;
        }
    } else {
        ok( ret == HRESULT_FROM_WIN32(ERROR_FILE_NOT_FOUND) ||
            ret == HRESULT_FROM_WIN32(ERROR_INVALID_PARAMETER),
            "SHCreateStreamOnFileEx: expected HRESULT_FROM_WIN32(ERROR_FILE_NOT_FOUND) or "
            "HRESULT_FROM_WIN32(ERROR_INVALID_PARAMETER), got 0x%08x\n", ret);
    }
    ok(stream == ((void*)0), "SHCreateStreamOnFileEx: expected a NULL IStream object, got %p\n", stream);

    stream = ((void*)0);
    ret = SHCreateStreamOnFileEx(test_file, mode | STGM_FAILIFTHERE | stgm, 0, TRUE, ((void*)0), &stream);

    if (broken(ret == HRESULT_FROM_WIN32(ERROR_INVALID_PARAMETER) && stream == ((void*)0))) {
        skip("Not supported\n");
        DeleteFileA(test_fileA);
        return;
    }

    ok(ret == S_OK, "SHCreateStreamOnFileEx: expected S_OK, got 0x%08x\n", ret);
    ok(stream != ((void*)0), "SHCreateStreamOnFileEx: expected a valid IStream object, got NULL\n");

    if (stream) {
        test_stream_qi(stream);
        test_IStream_invalid_operations(stream, mode);

        refcount = IStream_Release(stream);
        ok(refcount == 0, "SHCreateStreamOnFileEx: expected 0, got %d\n", refcount);

        delret = DeleteFileA(test_fileA);
        ok(delret, "SHCreateStreamOnFileEx: could not delete the test file, got error %d\n",
           GetLastError());
    }

    stream = ((void*)0);
    ret = SHCreateStreamOnFileEx(test_file, mode | STGM_CREATE | stgm, 0, FALSE, ((void*)0), &stream);
    if (ret == HRESULT_FROM_WIN32(ERROR_ACCESS_DENIED)) {
        win_skip("File probably locked by Anti-Virus/Spam software, trying again\n");
        Sleep(1000);
        ret = SHCreateStreamOnFileEx(test_file, mode | STGM_CREATE | stgm, 0, FALSE, ((void*)0), &stream);
    }
    ok(ret == S_OK, "SHCreateStreamOnFileEx: expected S_OK, got 0x%08x\n", ret);
    ok(stream != ((void*)0), "SHCreateStreamOnFileEx: expected a valid IStream object, got NULL\n");

    if (stream) {
        test_IStream_invalid_operations(stream, mode);

        refcount = IStream_Release(stream);
        ok(refcount == 0, "SHCreateStreamOnFileEx: expected 0, got %d\n", refcount);

        delret = DeleteFileA(test_fileA);
        ok(delret, "SHCreateStreamOnFileEx: could not delete the test file, got error %d\n",
           GetLastError());
    }

    stream = ((void*)0);
    ret = SHCreateStreamOnFileEx(test_file, mode | STGM_CREATE | stgm, 0, TRUE, ((void*)0), &stream);
    if (ret == HRESULT_FROM_WIN32(ERROR_ACCESS_DENIED)) {
        win_skip("File probably locked by Anti-Virus/Spam software, trying again\n");
        Sleep(1000);
        ret = SHCreateStreamOnFileEx(test_file, mode | STGM_CREATE | stgm, 0, TRUE, ((void*)0), &stream);
    }
    ok(ret == S_OK, "SHCreateStreamOnFileEx: expected S_OK, got 0x%08x\n", ret);
    ok(stream != ((void*)0), "SHCreateStreamOnFileEx: expected a valid IStream object, got NULL\n");

    if (stream) {
        test_IStream_invalid_operations(stream, mode);

        refcount = IStream_Release(stream);
        ok(refcount == 0, "SHCreateStreamOnFileEx: expected 0, got %d\n", refcount);
    }





    stream = ((void*)0);
    ret = SHCreateStreamOnFileEx(test_file, mode | STGM_FAILIFTHERE | stgm, 0, FALSE, ((void*)0), &stream);
    ok(ret == S_OK, "SHCreateStreamOnFileEx: expected S_OK, got 0x%08x\n", ret);
    ok(stream != ((void*)0), "SHCreateStreamOnFileEx: expected a valid IStream object, got NULL\n");

    if (stream) {
        test_IStream_invalid_operations(stream, mode);

        refcount = IStream_Release(stream);
        ok(refcount == 0, "SHCreateStreamOnFileEx: expected 0, got %d\n", refcount);
    }

    stream = ((void*)0);
    ret = SHCreateStreamOnFileEx(test_file, mode | STGM_FAILIFTHERE | stgm, 0, TRUE, ((void*)0), &stream);
    ok(ret == HRESULT_FROM_WIN32(ERROR_FILE_EXISTS), "SHCreateStreamOnFileEx: expected HRESULT_FROM_WIN32(ERROR_FILE_EXISTS), got 0x%08x\n", ret);
    ok(stream == ((void*)0), "SHCreateStreamOnFileEx: expected a NULL IStream object, got %p\n", stream);

    stream = ((void*)0);
    ret = SHCreateStreamOnFileEx(test_file, mode | STGM_CREATE | stgm, 0, FALSE, ((void*)0), &stream);
    ok(ret == S_OK, "SHCreateStreamOnFileEx: expected S_OK, got 0x%08x\n", ret);
    ok(stream != ((void*)0), "SHCreateStreamOnFileEx: expected a valid IStream object, got NULL\n");

    if (stream) {
        test_IStream_invalid_operations(stream, mode);

        refcount = IStream_Release(stream);
        ok(refcount == 0, "SHCreateStreamOnFileEx: expected 0, got %d\n", refcount);
    }

    stream = ((void*)0);
    ret = SHCreateStreamOnFileEx(test_file, mode | STGM_CREATE | stgm, 0, TRUE, ((void*)0), &stream);
    ok(ret == S_OK, "SHCreateStreamOnFileEx: expected S_OK, got 0x%08x\n", ret);
    ok(stream != ((void*)0), "SHCreateStreamOnFileEx: expected a valid IStream object, got NULL\n");

    if (stream) {
        test_IStream_invalid_operations(stream, mode);

        refcount = IStream_Release(stream);
        ok(refcount == 0, "SHCreateStreamOnFileEx: expected 0, got %d\n", refcount);
    }

    delret = DeleteFileA(test_fileA);
    ok(delret, "SHCreateStreamOnFileEx: could not delete the test file, got error %d\n",
       GetLastError());
}
