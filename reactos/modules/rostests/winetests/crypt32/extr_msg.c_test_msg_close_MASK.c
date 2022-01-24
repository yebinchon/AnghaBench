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
typedef  int /*<<< orphan*/ * HCRYPTMSG ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  CMSG_DATA ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  PKCS_7_ASN_ENCODING ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(void)
{
    BOOL ret;
    HCRYPTMSG msg;

    /* NULL succeeds.. */
    ret = FUNC0(NULL);
    FUNC3(ret, "CryptMsgClose failed: %x\n", FUNC2());
    /* but an arbitrary pointer crashes. */
    if (0)
        ret = FUNC0((HCRYPTMSG)1);
    msg = FUNC1(PKCS_7_ASN_ENCODING, 0, CMSG_DATA, NULL, NULL,
     NULL);
    FUNC3(msg != NULL, "CryptMsgOpenToEncode failed: %x\n", FUNC2());
    ret = FUNC0(msg);
    FUNC3(ret, "CryptMsgClose failed: %x\n", FUNC2());
}