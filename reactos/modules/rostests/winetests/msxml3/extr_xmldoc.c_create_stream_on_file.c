
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int LPVOID ;
typedef int LPCSTR ;
typedef int IStream ;
typedef scalar_t__ HRESULT ;
typedef int HGLOBAL ;
typedef scalar_t__ HANDLE ;
typedef scalar_t__ DWORD ;


 int CloseHandle (scalar_t__) ;
 scalar_t__ CreateFileA (int ,int ,int ,int *,int ,int ,int *) ;
 scalar_t__ CreateStreamOnHGlobal (int ,int ,int **) ;
 int FILE_ATTRIBUTE_NORMAL ;
 int FILE_SHARE_READ ;
 int GENERIC_READ ;
 int GHND ;
 scalar_t__ GetFileSize (scalar_t__,int *) ;
 int GlobalAlloc (int ,scalar_t__) ;
 int GlobalLock (int ) ;
 int GlobalUnlock (int ) ;
 scalar_t__ INVALID_HANDLE_VALUE ;
 int OPEN_EXISTING ;
 int ReadFile (scalar_t__,int ,scalar_t__,scalar_t__*,int *) ;
 scalar_t__ S_OK ;
 int TRUE ;
 int ok (int,char*,...) ;

__attribute__((used)) static void create_stream_on_file(IStream **stream, LPCSTR path)
{
    HANDLE hfile;
    HGLOBAL hglobal;
    LPVOID ptr;
    HRESULT hr;
    DWORD file_size, read;

    hfile = CreateFileA(path, GENERIC_READ, FILE_SHARE_READ, ((void*)0),
                        OPEN_EXISTING, FILE_ATTRIBUTE_NORMAL, ((void*)0));
    ok(hfile != INVALID_HANDLE_VALUE, "Expected a valid file handle\n");
    file_size = GetFileSize(hfile, ((void*)0));

    hglobal = GlobalAlloc(GHND, file_size);
    ptr = GlobalLock(hglobal);

    ReadFile(hfile, ptr, file_size, &read, ((void*)0));
    ok(file_size == read, "Expected to read the whole file, read %d\n", read);

    hr = CreateStreamOnHGlobal(hglobal, TRUE, stream);
    ok(hr == S_OK, "Expected S_OK, got %08x\n", hr);
    ok(*stream != ((void*)0), "Expected non-NULL stream\n");

    CloseHandle(hfile);
    GlobalUnlock(hglobal);
}
