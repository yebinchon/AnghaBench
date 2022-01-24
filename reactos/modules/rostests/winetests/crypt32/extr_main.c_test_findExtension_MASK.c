#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int member_0; int* member_1; } ;
struct TYPE_5__ {char* member_0; TYPE_1__ member_2; int /*<<< orphan*/  member_1; } ;
typedef  int /*<<< orphan*/ * PCERT_EXTENSION ;
typedef  char CHAR ;
typedef  TYPE_2__ CERT_EXTENSION ;
typedef  int BYTE ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (char*,int,TYPE_2__*) ; 
 int ERROR_INVALID_PARAMETER ; 
 int FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC3 (int,char*,...) ; 

__attribute__((used)) static void FUNC4(void)
{
    PCERT_EXTENSION ret;
    static CHAR oid[] = "1.2.3";
    BYTE blobbin[] = {0x02,0x01,0x01};
    CERT_EXTENSION ext = { oid, TRUE, { sizeof blobbin, blobbin } };

    /* returns NULL, last error not set */
    FUNC2(0xdeadbeef);
    ret = FUNC0(NULL, 0, NULL);
    FUNC3(ret == NULL, "Expected failure\n");
    FUNC3(FUNC1() == 0xdeadbeef, "Last error was set to %08x\n",
     FUNC1());
    if (0)
    {
        /* crashes */
        FUNC2(0xdeadbeef);
        FUNC0(NULL, 1, NULL);
        /* returns NULL, last error is ERROR_INVALID_PARAMETER
         * crashes on Vista
         */
        FUNC2(0xdeadbeef);
        ret = FUNC0(NULL, 1, &ext);
        FUNC3(!ret && FUNC1() == ERROR_INVALID_PARAMETER,
         "Expected ERROR_INVALID_PARAMETER, got %d (%08x)\n", FUNC1(),
         FUNC1());
    }
    /* returns NULL, last error not set */
    FUNC2(0xdeadbeef);
    ret = FUNC0("bogus", 1, &ext);
    FUNC3(ret == NULL, "Expected failure\n");
    FUNC3(FUNC1() == 0xdeadbeef, "Last error was set to %08x\n",
     FUNC1());
    /* returns NULL, last error not set */
    FUNC2(0xdeadbeef);
    ret = FUNC0("1.2.4", 1, &ext);
    FUNC3(ret == NULL, "Expected failure\n");
    FUNC3(FUNC1() == 0xdeadbeef, "Last error was set to %08x\n",
     FUNC1());
    /* succeeds, last error not set */
    FUNC2(0xdeadbeef);
    ret = FUNC0("1.2.3", 1, &ext);
    FUNC3(ret != NULL, "CertFindExtension failed: %08x\n", FUNC1());
}