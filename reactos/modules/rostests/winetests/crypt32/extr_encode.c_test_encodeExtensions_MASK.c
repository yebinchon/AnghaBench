#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {size_t* encoded; int /*<<< orphan*/  exts; } ;
typedef  size_t DWORD ;
typedef  int /*<<< orphan*/  BYTE ;
typedef  scalar_t__ BOOL ;

/* Variables and functions */
 size_t FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  CRYPT_ENCODE_ALLOC_FLAG ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  X509_EXTENSIONS ; 
 TYPE_1__* exts ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,size_t*,size_t) ; 
 int /*<<< orphan*/  FUNC4 (int,char*,...) ; 
 scalar_t__ FUNC5 (size_t,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ **,size_t*) ; 

__attribute__((used)) static void FUNC6(DWORD dwEncoding)
{
    DWORD i;

    for (i = 0; i < FUNC0(exts); i++)
    {
        BOOL ret;
        BYTE *buf = NULL;
        DWORD bufSize = 0;

        ret = FUNC5(dwEncoding, X509_EXTENSIONS, &exts[i].exts,
         CRYPT_ENCODE_ALLOC_FLAG, NULL, &buf, &bufSize);
        FUNC4(ret, "CryptEncodeObjectEx failed: %08x\n", FUNC1());
        if (ret)
        {
            FUNC4(bufSize == exts[i].encoded[1] + 2,
             "Expected %d bytes, got %d\n", exts[i].encoded[1] + 2, bufSize);
            FUNC4(!FUNC3(buf, exts[i].encoded, exts[i].encoded[1] + 2),
             "Unexpected value\n");
            FUNC2(buf);
        }
    }
}