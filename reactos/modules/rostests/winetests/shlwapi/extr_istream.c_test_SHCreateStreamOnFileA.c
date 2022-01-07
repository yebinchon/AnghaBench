
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ULONG ;
typedef int IStream ;
typedef int HRESULT ;
typedef int DWORD ;
typedef char CHAR ;
typedef int BOOL ;


 int DeleteFileA (char*) ;
 int ERROR_BAD_PATHNAME ;
 int ERROR_FILE_NOT_FOUND ;
 int ERROR_PATH_NOT_FOUND ;
 int E_INVALIDARG ;
 int GetLastError () ;
 int GetTempPathA (int,char*) ;
 int HRESULT_FROM_WIN32 (int ) ;
 int IStream_Release (int *) ;
 int MAX_PATH ;
 int SHCreateStreamOnFileA (char*,int,int **) ;
 int STGM_CONVERT ;
 int STGM_CREATE ;
 int STGM_DELETEONRELEASE ;
 int STGM_FAILIFTHERE ;
 int STGM_TRANSACTED ;
 int S_OK ;
 int lstrcatA (char*,char const*) ;
 int ok (int,char*,...) ;
 int test_IStream_invalid_operations (int *,int) ;
 int test_stream_qi (int *) ;
 int test_stream_read_write (int *,int) ;
 int trace (char*,int,int) ;
 int win_skip (char*) ;

__attribute__((used)) static void test_SHCreateStreamOnFileA(DWORD mode, DWORD stgm)
{
    IStream * stream;
    HRESULT ret;
    ULONG refcount;
    char test_file[MAX_PATH];
    static const CHAR testA_txt[] = "\\testA.txt";

    trace("SHCreateStreamOnFileA: testing mode %d, STGM flags %08x\n", mode, stgm);


    GetTempPathA(MAX_PATH, test_file);
    lstrcatA(test_file, testA_txt);



    stream = ((void*)0);
    ret = SHCreateStreamOnFileA(((void*)0), mode | stgm, &stream);
    if (ret == E_INVALIDARG) {
        win_skip("Not supported\n");
        return;
    }

    ok(ret == HRESULT_FROM_WIN32(ERROR_PATH_NOT_FOUND) ||
       ret == HRESULT_FROM_WIN32(ERROR_BAD_PATHNAME) ,
       "SHCreateStreamOnFileA: expected HRESULT_FROM_WIN32(ERROR_PATH_NOT_FOUND) "
       "or HRESULT_FROM_WIN32(ERROR_BAD_PATHNAME), got 0x%08x\n", ret);
    ok(stream == ((void*)0), "SHCreateStreamOnFileA: expected a NULL IStream object, got %p\n", stream);

if (0)
{
    ret = SHCreateStreamOnFileA(test_file, mode | stgm, ((void*)0));
    ok(ret == E_INVALIDARG, "SHCreateStreamOnFileA: expected E_INVALIDARG, got 0x%08x\n", ret);
}

    stream = ((void*)0);
    ret = SHCreateStreamOnFileA(test_file, mode | STGM_CONVERT | stgm, &stream);
    ok(ret == E_INVALIDARG, "SHCreateStreamOnFileA: expected E_INVALIDARG, got 0x%08x\n", ret);
    ok(stream == ((void*)0), "SHCreateStreamOnFileA: expected a NULL IStream object, got %p\n", stream);

    stream = ((void*)0);
    ret = SHCreateStreamOnFileA(test_file, mode | STGM_DELETEONRELEASE | stgm, &stream);
    ok(ret == E_INVALIDARG, "SHCreateStreamOnFileA: expected E_INVALIDARG, got 0x%08x\n", ret);
    ok(stream == ((void*)0), "SHCreateStreamOnFileA: expected a NULL IStream object, got %p\n", stream);

    stream = ((void*)0);
    ret = SHCreateStreamOnFileA(test_file, mode | STGM_TRANSACTED | stgm, &stream);
    ok(ret == E_INVALIDARG, "SHCreateStreamOnFileA: expected E_INVALIDARG, got 0x%08x\n", ret);
    ok(stream == ((void*)0), "SHCreateStreamOnFileA: expected a NULL IStream object, got %p\n", stream);



    stream = ((void*)0);
    ret = SHCreateStreamOnFileA(test_file, mode | STGM_FAILIFTHERE | stgm, &stream);
    ok(ret == HRESULT_FROM_WIN32(ERROR_FILE_NOT_FOUND), "SHCreateStreamOnFileA: expected HRESULT_FROM_WIN32(ERROR_FILE_NOT_FOUND), got 0x%08x\n", ret);
    ok(stream == ((void*)0), "SHCreateStreamOnFileA: expected a NULL IStream object, got %p\n", stream);

    stream = ((void*)0);
    ret = SHCreateStreamOnFileA(test_file, mode | STGM_CREATE | stgm, &stream);
    ok(ret == S_OK, "SHCreateStreamOnFileA: expected S_OK, got 0x%08x\n", ret);
    ok(stream != ((void*)0), "SHCreateStreamOnFileA: expected a valid IStream object, got NULL\n");

    if (stream) {
        test_stream_qi(stream);
        test_IStream_invalid_operations(stream, mode);

        refcount = IStream_Release(stream);
        ok(refcount == 0, "SHCreateStreamOnFileA: expected 0, got %d\n", refcount);
    }





    stream = ((void*)0);
    ret = SHCreateStreamOnFileA(test_file, mode | STGM_FAILIFTHERE | stgm, &stream);
    ok(ret == S_OK, "SHCreateStreamOnFileA: expected S_OK, got 0x%08x\n", ret);
    ok(stream != ((void*)0), "SHCreateStreamOnFileA: expected a valid IStream object, got NULL\n");

    if (stream) {
        test_IStream_invalid_operations(stream, mode);

        refcount = IStream_Release(stream);
        ok(refcount == 0, "SHCreateStreamOnFileA: expected 0, got %d\n", refcount);
    }

    stream = ((void*)0);
    ret = SHCreateStreamOnFileA(test_file, mode | STGM_CREATE | stgm, &stream);
    ok(ret == S_OK, "SHCreateStreamOnFileA: expected S_OK, got 0x%08x\n", ret);
    ok(stream != ((void*)0), "SHCreateStreamOnFileA: expected a valid IStream object, got NULL\n");

    if (stream) {
        BOOL delret;

        test_stream_read_write(stream, mode);
        test_IStream_invalid_operations(stream, mode);

        refcount = IStream_Release(stream);
        ok(refcount == 0, "SHCreateStreamOnFileA: expected 0, got %d\n", refcount);

        delret = DeleteFileA(test_file);
        ok(delret, "SHCreateStreamOnFileA: could not delete file '%s', got error %d\n",
           test_file, GetLastError());
    }
}
