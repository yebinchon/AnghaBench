#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {char* member_0; TYPE_1__* member_2; int /*<<< orphan*/  member_1; } ;
struct TYPE_5__ {int member_0; int* member_1; } ;
typedef  int /*<<< orphan*/ * PCRYPT_ATTRIBUTE ;
typedef  TYPE_1__ CRYPT_ATTR_BLOB ;
typedef  TYPE_2__ CRYPT_ATTRIBUTE ;
typedef  char CHAR ;
typedef  int BYTE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/ * FUNC1 (char*,int,TYPE_2__*) ; 
 int ERROR_INVALID_PARAMETER ; 
 int FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int,char*,...) ; 

__attribute__((used)) static void FUNC5(void)
{
    PCRYPT_ATTRIBUTE ret;
    BYTE blobbin[] = {0x02,0x01,0x01};
    static CHAR oid[] = "1.2.3";
    CRYPT_ATTR_BLOB blobs[] = { { sizeof blobbin, blobbin }, };
    CRYPT_ATTRIBUTE attr = { oid, FUNC0(blobs), blobs };

    /* returns NULL, last error not set */
    FUNC3(0xdeadbeef);
    ret = FUNC1(NULL, 0, NULL);
    FUNC4(ret == NULL, "Expected failure\n");
    FUNC4(FUNC2() == 0xdeadbeef, "Last error was set to %08x\n",
     FUNC2());
    if (0)
    {
        /* crashes */
        FUNC1(NULL, 1, NULL);
        /* returns NULL, last error is ERROR_INVALID_PARAMETER
         * crashes on Vista
         */
        FUNC3(0xdeadbeef);
        ret = FUNC1(NULL, 1, &attr);
        FUNC4(!ret && FUNC2() == ERROR_INVALID_PARAMETER,
         "Expected ERROR_INVALID_PARAMETER, got %d (%08x)\n", FUNC2(),
         FUNC2());
    }
    /* returns NULL, last error not set */
    FUNC3(0xdeadbeef);
    ret = FUNC1("bogus", 1, &attr);
    FUNC4(ret == NULL, "Expected failure\n");
    FUNC4(FUNC2() == 0xdeadbeef, "Last error was set to %08x\n",
     FUNC2());
    /* returns NULL, last error not set */
    FUNC3(0xdeadbeef);
    ret = FUNC1("1.2.4", 1, &attr);
    FUNC4(ret == NULL, "Expected failure\n");
    FUNC4(FUNC2() == 0xdeadbeef, "Last error was set to %08x\n",
     FUNC2());
    /* succeeds, last error not set */
    FUNC3(0xdeadbeef);
    ret = FUNC1("1.2.3", 1, &attr);
    FUNC4(ret != NULL, "CertFindAttribute failed: %08x\n", FUNC2());
}