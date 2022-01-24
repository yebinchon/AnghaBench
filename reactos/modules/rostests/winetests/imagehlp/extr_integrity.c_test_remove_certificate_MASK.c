#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  scalar_t__ HANDLE ;
typedef  int DWORD ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  CERT_SECTION_TYPE_ANY ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FILE_ATTRIBUTE_NORMAL ; 
 int /*<<< orphan*/  FILE_SHARE_READ ; 
 int GENERIC_READ ; 
 int GENERIC_WRITE ; 
 int /*<<< orphan*/  FUNC2 () ; 
 scalar_t__ INVALID_HANDLE_VALUE ; 
 int /*<<< orphan*/  OPEN_EXISTING ; 
 int /*<<< orphan*/  FUNC3 (int,char*,int,...) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,int /*<<< orphan*/ ,int*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  test_dll_path ; 

__attribute__((used)) static void FUNC7(int index)
{
    DWORD orig_count = 0, count = 0;
    HANDLE hFile;
    BOOL ret;

    hFile = FUNC1(test_dll_path, GENERIC_READ | GENERIC_WRITE, FILE_SHARE_READ, NULL, OPEN_EXISTING, FILE_ATTRIBUTE_NORMAL, NULL);

    if (hFile == INVALID_HANDLE_VALUE)
    {
        FUNC6("Unable to open %s, skipping test\n", test_dll_path);
        return;
    }

    ret = FUNC4(hFile, CERT_SECTION_TYPE_ANY, &orig_count, NULL, 0);
    FUNC3 (ret, "Unable to enumerate certificates in file; err=%x\n", FUNC2());
    ret = FUNC5(hFile, index);
    FUNC3 (ret, "Unable to remove certificate from file; err=%x\n", FUNC2());

    /* Test to see if the certificate has actually been removed */
    FUNC4(hFile, CERT_SECTION_TYPE_ANY, &count, NULL, 0);
    FUNC3 (count == orig_count - 1, "Certificate count mismatch; orig=%d new=%d\n", orig_count, count);

    FUNC0(hFile);
}