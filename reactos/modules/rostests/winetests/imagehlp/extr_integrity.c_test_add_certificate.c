
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int WIN_CERTIFICATE ;
struct TYPE_5__ {int dwLength; int bCertificate; int wCertificateType; int wRevision; } ;
typedef TYPE_1__* LPWIN_CERTIFICATE ;
typedef scalar_t__ HANDLE ;
typedef int DWORD ;
typedef int BOOL ;


 int CloseHandle (scalar_t__) ;
 int CopyMemory (int ,char const*,int) ;
 scalar_t__ CreateFileA (int ,int,int ,int *,int ,int ,int *) ;
 int FILE_ATTRIBUTE_NORMAL ;
 int FILE_SHARE_READ ;
 int GENERIC_READ ;
 int GENERIC_WRITE ;
 int GetLastError () ;
 int GetProcessHeap () ;
 int HEAP_ZERO_MEMORY ;
 TYPE_1__* HeapAlloc (int ,int ,int) ;
 int HeapFree (int ,int ,TYPE_1__*) ;
 scalar_t__ INVALID_HANDLE_VALUE ;
 int OPEN_EXISTING ;
 int WIN_CERT_REVISION_1_0 ;
 int WIN_CERT_TYPE_PKCS_SIGNED_DATA ;
 int ok (int ,char*,int ) ;
 int pImageAddCertificate (scalar_t__,TYPE_1__*,int*) ;
 int skip (char*,...) ;
 int test_dll_path ;
 int trace (char*,int) ;

__attribute__((used)) static DWORD test_add_certificate(const char *cert_data, int len)
{
    HANDLE hFile;
    LPWIN_CERTIFICATE cert;
    DWORD cert_len;
    DWORD index;
    BOOL ret;

    hFile = CreateFileA(test_dll_path, GENERIC_READ | GENERIC_WRITE, FILE_SHARE_READ, ((void*)0), OPEN_EXISTING, FILE_ATTRIBUTE_NORMAL, ((void*)0));

    if (hFile == INVALID_HANDLE_VALUE)
    {
        skip("Unable to open %s, skipping test\n", test_dll_path);
        return ~0;
    }

    cert_len = sizeof(WIN_CERTIFICATE) + len;
    cert = HeapAlloc(GetProcessHeap(), HEAP_ZERO_MEMORY, cert_len);

    if (!cert)
    {
        skip("Unable to allocate memory, skipping test\n");
        CloseHandle(hFile);
        return ~0;
    }

    cert->dwLength = cert_len;
    cert->wRevision = WIN_CERT_REVISION_1_0;
    cert->wCertificateType = WIN_CERT_TYPE_PKCS_SIGNED_DATA;
    CopyMemory(cert->bCertificate, cert_data, len);

    ret = pImageAddCertificate(hFile, cert, &index);
    ok(ret, "Unable to add certificate to image, error %x\n", GetLastError());
    trace("added cert index %d\n", index);

    HeapFree(GetProcessHeap(), 0, cert);
    CloseHandle(hFile);
    return index;
}
