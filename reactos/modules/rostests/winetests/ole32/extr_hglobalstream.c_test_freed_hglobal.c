
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int teststring ;
typedef int buffer ;
typedef int ULONG ;
struct TYPE_3__ {int QuadPart; } ;
typedef TYPE_1__ ULARGE_INTEGER ;
typedef int IStream ;
typedef int HRESULT ;
typedef int * HGLOBAL ;


 int CreateStreamOnHGlobal (int *,int ,int **) ;
 int E_OUTOFMEMORY ;
 int FALSE ;
 int GMEM_DDESHARE ;
 int GMEM_MOVEABLE ;
 int GMEM_NODISCARD ;
 int GetLastError () ;
 int * GlobalAlloc (int,scalar_t__) ;
 int GlobalFree (int *) ;
 char* GlobalLock (int *) ;
 int GlobalUnlock (int *) ;
 int IStream_Read (int *,char*,int,int*) ;
 int IStream_Release (int *) ;
 int IStream_SetSize (int *,TYPE_1__) ;
 int IStream_Write (int *,char*,int,int*) ;
 scalar_t__ broken (int) ;
 int memset (char*,int ,int) ;
 int ok (int,char*,...) ;
 int ok_ole_success (int,char*) ;
 int strcmp (char*,char const*) ;
 int strcpy (char*,char const*) ;
 scalar_t__ strlen (char const*) ;

__attribute__((used)) static void test_freed_hglobal(void)
{
    static const char teststring[] = "this is a test string";
    HRESULT hr;
    IStream *pStream;
    HGLOBAL hglobal;
    char *p;
    char buffer[sizeof(teststring) + 8];
    ULARGE_INTEGER ull;
    ULONG read, written;

    hglobal = GlobalAlloc(GMEM_DDESHARE|GMEM_NODISCARD|GMEM_MOVEABLE, strlen(teststring) + 1);
    ok(hglobal != ((void*)0), "GlobalAlloc failed with error %d\n", GetLastError());
    p = GlobalLock(hglobal);
    strcpy(p, teststring);
    GlobalUnlock(hglobal);

    hr = CreateStreamOnHGlobal(hglobal, FALSE, &pStream);
    ok_ole_success(hr, "CreateStreamOnHGlobal");

    hr = IStream_Read(pStream, buffer, sizeof(buffer), &read);
    ok_ole_success(hr, "IStream_Read");
    ok(!strcmp(buffer, teststring), "buffer data %s differs\n", buffer);
    ok(read == sizeof(teststring) ||
       broken(read == ((sizeof(teststring) + 3) & ~3)),
       "read should be sizeof(teststring) instead of %d\n", read);

    GlobalFree(hglobal);

    memset(buffer, 0, sizeof(buffer));
    read = -1;
    hr = IStream_Read(pStream, buffer, sizeof(buffer), &read);
    ok_ole_success(hr, "IStream_Read");
    ok(buffer[0] == 0, "buffer data should be untouched\n");
    ok(read == 0, "read should be 0 instead of %d\n", read);

    ull.QuadPart = sizeof(buffer);
    hr = IStream_SetSize(pStream, ull);
    ok(hr == E_OUTOFMEMORY, "IStream_SetSize with invalid HGLOBAL should return E_OUTOFMEMORY instead of 0x%08x\n", hr);

    hr = IStream_Write(pStream, buffer, sizeof(buffer), &written);
    ok(hr == E_OUTOFMEMORY, "IStream_Write with invalid HGLOBAL should return E_OUTOFMEMORY instead of 0x%08x\n", hr);
    ok(written == 0, "written should be 0 instead of %d\n", written);

    IStream_Release(pStream);
}
