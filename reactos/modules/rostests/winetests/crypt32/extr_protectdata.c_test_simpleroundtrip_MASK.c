#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ WCHAR ;
struct TYPE_6__ {unsigned char* pbData; scalar_t__ cbData; } ;
typedef  TYPE_1__ DATA_BLOB ;

/* Variables and functions */
 char const* FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (unsigned char*) ; 
 scalar_t__ FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (char const*) ; 
 int /*<<< orphan*/  FUNC4 (char const*,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int,char*,...) ; 
 int FUNC6 (TYPE_1__*,scalar_t__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int FUNC7 (TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_1__*) ; 
 scalar_t__ FUNC8 (char const*) ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 

__attribute__((used)) static void FUNC10(const char *plaintext)
{
    DATA_BLOB input;
    DATA_BLOB encrypted;
    DATA_BLOB output;
    int res;
    WCHAR emptyW[1];

    emptyW[0] = 0;
    input.pbData = (unsigned char *)plaintext;
    input.cbData = FUNC8(plaintext);
    res = FUNC6(&input, emptyW, NULL, NULL, NULL, 0, &encrypted);
    FUNC5(res != 0 || FUNC2(!res), "can't protect\n");
    if (!res)
    {
        /* Fails on Win9x, NT4 */
        FUNC9("CryptProtectData failed\n");
        return;
    }

    res = FUNC7(&encrypted, NULL, NULL, NULL, NULL, 0, &output);
    FUNC5(res != 0, "can't unprotect; last error %u\n", FUNC0());
    FUNC5(output.cbData == FUNC8(plaintext), "output wrong length %d for input '%s', wanted %d\n", output.cbData, plaintext, FUNC3(plaintext));
    FUNC5(!FUNC4(plaintext, (char *)output.pbData, output.cbData), "output wrong contents for input '%s'\n", plaintext);
    FUNC1(output.pbData);
    FUNC1(encrypted.pbData);
}