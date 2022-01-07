
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int signatureW ;
typedef int signature ;
struct TYPE_4__ {int len; int data; } ;
typedef TYPE_1__ bin_file ;
typedef char WCHAR ;
typedef scalar_t__ HANDLE ;
typedef int BOOL ;


 int CP_ACP ;
 int CloseHandle (scalar_t__) ;
 scalar_t__ CreateFileA (char*,int ,int,int *,int ,int ,int ) ;
 int DeleteFileA (char*) ;
 int FILE_SHARE_READ ;
 int FILE_SHARE_WRITE ;
 int GENERIC_READ ;
 int GetFilePatchSignatureA (char*,int ,int *,int ,int *,int ,int *,int,char*) ;
 int GetFilePatchSignatureByHandle (scalar_t__,int ,int *,int ,int *,int ,int *,int,char*) ;
 int GetFilePatchSignatureW (char*,int ,int *,int ,int *,int ,int *,int,char*) ;
 char* GetLastError () ;
 scalar_t__ INVALID_HANDLE_VALUE ;
 int MAX_PATH ;
 int MultiByteToWideChar (int ,int ,char*,int,char*,int ) ;
 int OPEN_EXISTING ;
 int WideCharToMultiByte (int ,int ,char*,int,char*,int ,int *,int *) ;
 int _countof (char*) ;
 int _stricmp (char const*,char*) ;
 int extract (char*,TYPE_1__ const*) ;
 int memcpy (unsigned char*,int ,int ) ;
 int memset (char*,int,int) ;
 int ok (int,char*,char*,...) ;

__attribute__((used)) static void validate_signature(const char* casename, const char* fieldname, const bin_file* bin, const char* expected)
{
    char filename[MAX_PATH];
    WCHAR filenameW[MAX_PATH];
    HANDLE hFile;
    unsigned char data[0x100];
    char signature[0x20] = {0};
    WCHAR signatureW[0x20] = {0};
    BOOL bResult;

    memset(signature, 0xaa, sizeof(signature));
    memcpy(data, bin->data, bin->len);

    if (!extract(filename, bin))
        return;

    memset(signature, 0xaa, sizeof(signature)-1);
    bResult = GetFilePatchSignatureA(filename, 0, ((void*)0), 0, ((void*)0), 0, ((void*)0), sizeof(signature), signature);
    ok(bResult, "GetFilePatchSignatureA failed %lu, %s.%s\n", GetLastError(), casename, fieldname);
    if (bResult)
    {

        ok(!_stricmp(expected, signature), "Got %s for %s.%s\n", signature, casename, fieldname);
    }

    memset(signature, 0xaa, sizeof(signature)-1);
    memset(signatureW, 0xaa, sizeof(signatureW)-sizeof(WCHAR));

    MultiByteToWideChar(CP_ACP, 0, filename, -1, filenameW, _countof(filenameW));
    bResult = GetFilePatchSignatureW(filenameW, 0, ((void*)0), 0, ((void*)0), 0, ((void*)0), sizeof(signatureW), signatureW);
    ok(bResult, "GetFilePatchSignatureW failed %lu, %s.%s\n", GetLastError(), casename, fieldname);
    if (bResult)
    {
        WideCharToMultiByte(CP_ACP, 0, signatureW, -1, signature, _countof(signature), ((void*)0), ((void*)0));

        ok(!_stricmp(expected, signature), "Got %s for %s.%s\n", signature, casename, fieldname);
    }

    memset(signature, 0xaa, sizeof(signature)-1);

    hFile = CreateFileA(filename, GENERIC_READ, FILE_SHARE_READ|FILE_SHARE_WRITE, ((void*)0), OPEN_EXISTING, 0, 0);
    ok(hFile != INVALID_HANDLE_VALUE, "Unable to open file %lu\n", GetLastError());
    if (hFile != INVALID_HANDLE_VALUE)
    {
        bResult = GetFilePatchSignatureByHandle(hFile, 0, ((void*)0), 0, ((void*)0), 0, ((void*)0), sizeof(signature), signature);
        ok(bResult, "GetFilePatchSignatureByHandle failed %lu, %s.%s\n", GetLastError(), casename, fieldname);
        if (bResult)
        {

            ok(!_stricmp(expected, signature), "Got %s for %s.%s\n", signature, casename, fieldname);
        }

        CloseHandle(hFile);
    }

    DeleteFileA(filename);
}
