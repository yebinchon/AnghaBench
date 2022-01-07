
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ HANDLE ;
typedef int DWORD ;
typedef int BOOL ;


 int CERT_SECTION_TYPE_ANY ;
 int CloseHandle (scalar_t__) ;
 scalar_t__ CreateFileA (int ,int,int ,int *,int ,int ,int *) ;
 int FILE_ATTRIBUTE_NORMAL ;
 int FILE_SHARE_READ ;
 int GENERIC_READ ;
 int GENERIC_WRITE ;
 int GetLastError () ;
 scalar_t__ INVALID_HANDLE_VALUE ;
 int OPEN_EXISTING ;
 int ok (int,char*,int,...) ;
 int pImageEnumerateCertificates (scalar_t__,int ,int*,int *,int ) ;
 int pImageRemoveCertificate (scalar_t__,int) ;
 int skip (char*,int ) ;
 int test_dll_path ;

__attribute__((used)) static void test_remove_certificate(int index)
{
    DWORD orig_count = 0, count = 0;
    HANDLE hFile;
    BOOL ret;

    hFile = CreateFileA(test_dll_path, GENERIC_READ | GENERIC_WRITE, FILE_SHARE_READ, ((void*)0), OPEN_EXISTING, FILE_ATTRIBUTE_NORMAL, ((void*)0));

    if (hFile == INVALID_HANDLE_VALUE)
    {
        skip("Unable to open %s, skipping test\n", test_dll_path);
        return;
    }

    ret = pImageEnumerateCertificates(hFile, CERT_SECTION_TYPE_ANY, &orig_count, ((void*)0), 0);
    ok (ret, "Unable to enumerate certificates in file; err=%x\n", GetLastError());
    ret = pImageRemoveCertificate(hFile, index);
    ok (ret, "Unable to remove certificate from file; err=%x\n", GetLastError());


    pImageEnumerateCertificates(hFile, CERT_SECTION_TYPE_ANY, &count, ((void*)0), 0);
    ok (count == orig_count - 1, "Certificate count mismatch; orig=%d new=%d\n", orig_count, count);

    CloseHandle(hFile);
}
