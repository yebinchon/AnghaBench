#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  WIN_CERTIFICATE ;
struct TYPE_5__ {int dwLength; int /*<<< orphan*/  bCertificate; int /*<<< orphan*/  wCertificateType; int /*<<< orphan*/  wRevision; } ;
typedef  TYPE_1__* LPWIN_CERTIFICATE ;
typedef  scalar_t__ HANDLE ;
typedef  int DWORD ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char const*,int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FILE_ATTRIBUTE_NORMAL ; 
 int /*<<< orphan*/  FILE_SHARE_READ ; 
 int GENERIC_READ ; 
 int GENERIC_WRITE ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  HEAP_ZERO_MEMORY ; 
 TYPE_1__* FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*) ; 
 scalar_t__ INVALID_HANDLE_VALUE ; 
 int /*<<< orphan*/  OPEN_EXISTING ; 
 int /*<<< orphan*/  WIN_CERT_REVISION_1_0 ; 
 int /*<<< orphan*/  WIN_CERT_TYPE_PKCS_SIGNED_DATA ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__,TYPE_1__*,int*) ; 
 int /*<<< orphan*/  FUNC9 (char*,...) ; 
 int /*<<< orphan*/  test_dll_path ; 
 int /*<<< orphan*/  FUNC10 (char*,int) ; 

__attribute__((used)) static DWORD FUNC11(const char *cert_data, int len)
{
    HANDLE hFile;
    LPWIN_CERTIFICATE cert;
    DWORD cert_len;
    DWORD index;
    BOOL ret;

    hFile = FUNC2(test_dll_path, GENERIC_READ | GENERIC_WRITE, FILE_SHARE_READ, NULL, OPEN_EXISTING, FILE_ATTRIBUTE_NORMAL, NULL);

    if (hFile == INVALID_HANDLE_VALUE)
    {
        FUNC9("Unable to open %s, skipping test\n", test_dll_path);
        return ~0;
    }

    cert_len = sizeof(WIN_CERTIFICATE) + len;
    cert = FUNC5(FUNC4(), HEAP_ZERO_MEMORY, cert_len);

    if (!cert)
    {
        FUNC9("Unable to allocate memory, skipping test\n");
        FUNC0(hFile);
        return ~0;
    }

    cert->dwLength = cert_len;
    cert->wRevision = WIN_CERT_REVISION_1_0;
    cert->wCertificateType = WIN_CERT_TYPE_PKCS_SIGNED_DATA;
    FUNC1(cert->bCertificate, cert_data, len);

    ret = FUNC8(hFile, cert, &index);
    FUNC7(ret, "Unable to add certificate to image, error %x\n", FUNC3());
    FUNC10("added cert index %d\n", index);

    FUNC6(FUNC4(), 0, cert);
    FUNC0(hFile);
    return index;
}