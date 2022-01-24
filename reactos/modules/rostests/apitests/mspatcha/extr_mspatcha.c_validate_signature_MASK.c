#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  signatureW ;
typedef  int /*<<< orphan*/  signature ;
struct TYPE_4__ {int /*<<< orphan*/  len; int /*<<< orphan*/  data; } ;
typedef  TYPE_1__ bin_file ;
typedef  char WCHAR ;
typedef  scalar_t__ HANDLE ;
typedef  int BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  CP_ACP ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (char*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int FILE_SHARE_READ ; 
 int FILE_SHARE_WRITE ; 
 int /*<<< orphan*/  GENERIC_READ ; 
 int FUNC3 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,char*) ; 
 int FUNC4 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,char*) ; 
 int FUNC5 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,char*) ; 
 char* FUNC6 () ; 
 scalar_t__ INVALID_HANDLE_VALUE ; 
 int MAX_PATH ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  OPEN_EXISTING ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 
 int /*<<< orphan*/  FUNC10 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC11 (char*,TYPE_1__ const*) ; 
 int /*<<< orphan*/  FUNC12 (unsigned char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (char*,int,int) ; 
 int /*<<< orphan*/  FUNC14 (int,char*,char*,...) ; 

__attribute__((used)) static void FUNC15(const char* casename, const char* fieldname, const bin_file* bin, const char* expected)
{
    char filename[MAX_PATH];
    WCHAR filenameW[MAX_PATH];
    HANDLE hFile;
    unsigned char data[0x100];
    char signature[0x20] = {0};
    WCHAR signatureW[0x20] = {0};
    BOOL bResult;

    FUNC13(signature, 0xaa, sizeof(signature));
    FUNC12(data, bin->data, bin->len);

    if (!FUNC11(filename, bin))
        return;

    FUNC13(signature, 0xaa, sizeof(signature)-1);
    bResult = FUNC3(filename, 0, NULL, 0, NULL, 0, NULL, sizeof(signature), signature);
    FUNC14(bResult, "GetFilePatchSignatureA failed %lu, %s.%s\n", FUNC6(), casename, fieldname);
    if (bResult)
    {
        // Signature is crc32 of data
        FUNC14(!FUNC10(expected, signature), "Got %s for %s.%s\n", signature, casename, fieldname);
    }

    FUNC13(signature, 0xaa, sizeof(signature)-1);
    FUNC13(signatureW, 0xaa, sizeof(signatureW)-sizeof(WCHAR));
    // Widechar version has a widechar signature
    FUNC7(CP_ACP, 0, filename, -1, filenameW, FUNC9(filenameW));
    bResult = FUNC5(filenameW, 0, NULL, 0, NULL, 0, NULL, sizeof(signatureW), signatureW);
    FUNC14(bResult, "GetFilePatchSignatureW failed %lu, %s.%s\n", FUNC6(), casename, fieldname);
    if (bResult)
    {
        FUNC8(CP_ACP, 0, signatureW, -1, signature, FUNC9(signature), NULL, NULL);
        // Signature is crc32 of data
        FUNC14(!FUNC10(expected, signature), "Got %s for %s.%s\n", signature, casename, fieldname);
    }

    FUNC13(signature, 0xaa, sizeof(signature)-1);
    // 'Handle' version has ansi signature
    hFile = FUNC1(filename, GENERIC_READ, FILE_SHARE_READ|FILE_SHARE_WRITE, NULL, OPEN_EXISTING, 0, 0);
    FUNC14(hFile != INVALID_HANDLE_VALUE, "Unable to open file %lu\n", FUNC6());
    if (hFile != INVALID_HANDLE_VALUE)
    {
        bResult = FUNC4(hFile, 0, NULL, 0, NULL, 0, NULL, sizeof(signature), signature);
        FUNC14(bResult, "GetFilePatchSignatureByHandle failed %lu, %s.%s\n", FUNC6(), casename, fieldname);
        if (bResult)
        {
            // Signature is crc32 of data
            FUNC14(!FUNC10(expected, signature), "Got %s for %s.%s\n", signature, casename, fieldname);
        }

        FUNC0(hFile);
    }

    FUNC2(filename);
}