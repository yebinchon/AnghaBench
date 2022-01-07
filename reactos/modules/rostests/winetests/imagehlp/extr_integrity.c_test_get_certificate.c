
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int WIN_CERTIFICATE ;
struct TYPE_5__ {int bCertificate; } ;
typedef TYPE_1__* LPWIN_CERTIFICATE ;
typedef scalar_t__ HANDLE ;
typedef scalar_t__ DWORD ;
typedef int BOOL ;


 int CloseHandle (scalar_t__) ;
 scalar_t__ CreateFileA (int ,int ,int ,int *,int ,int ,int *) ;
 scalar_t__ ERROR_INSUFFICIENT_BUFFER ;
 int FALSE ;
 int FILE_ATTRIBUTE_NORMAL ;
 int FILE_SHARE_READ ;
 int GENERIC_READ ;
 scalar_t__ GetLastError () ;
 int GetProcessHeap () ;
 int HEAP_ZERO_MEMORY ;
 TYPE_1__* HeapAlloc (int ,int ,scalar_t__) ;
 int HeapFree (int ,int ,TYPE_1__*) ;
 scalar_t__ INVALID_HANDLE_VALUE ;
 int OPEN_EXISTING ;
 scalar_t__ memcmp (int ,char const*,scalar_t__) ;
 int ok (int,char*,...) ;
 int pImageGetCertificateData (scalar_t__,int,TYPE_1__*,scalar_t__*) ;
 int skip (char*,...) ;
 int test_dll_path ;

__attribute__((used)) static void test_get_certificate(const char *cert_data, int index)
{
    HANDLE hFile;
    LPWIN_CERTIFICATE cert;
    DWORD cert_len = 0;
    DWORD err;
    BOOL ret;

    hFile = CreateFileA(test_dll_path, GENERIC_READ, FILE_SHARE_READ, ((void*)0), OPEN_EXISTING, FILE_ATTRIBUTE_NORMAL, ((void*)0));

    if (hFile == INVALID_HANDLE_VALUE)
    {
        skip("Unable to open %s, skipping test\n", test_dll_path);
        return;
    }

    ret = pImageGetCertificateData(hFile, index, ((void*)0), &cert_len);
    err = GetLastError();

    ok ((ret == FALSE) && (err == ERROR_INSUFFICIENT_BUFFER), "ImageGetCertificateData gave unexpected result; ret=%d / err=%x\n", ret, err);

    cert = HeapAlloc(GetProcessHeap(), HEAP_ZERO_MEMORY, cert_len);

    if (!cert)
    {
        skip("Unable to allocate memory, skipping test\n");
        CloseHandle(hFile);
        return;
    }

    ret = pImageGetCertificateData(hFile, index, cert, &cert_len);
    ok(ret, "Unable to retrieve certificate; err=%x\n", GetLastError());
    ok(memcmp(cert->bCertificate, cert_data, cert_len - sizeof(WIN_CERTIFICATE)) == 0, "Certificate retrieved did not match original\n");

    HeapFree(GetProcessHeap(), 0, cert);
    CloseHandle(hFile);
}
