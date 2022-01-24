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
typedef  int /*<<< orphan*/  value ;
typedef  int /*<<< orphan*/ * HCRYPTMSG ;
typedef  scalar_t__ DWORD ;
typedef  int BOOL ;

/* Variables and functions */
 scalar_t__ CMSG_CMS_SIGNER_INFO_PARAM ; 
 scalar_t__ CMSG_CONTENT_PARAM ; 
 scalar_t__ CMSG_DATA ; 
 scalar_t__ CMSG_ENCRYPTED ; 
 scalar_t__ CMSG_ENVELOPED ; 
 scalar_t__ CMSG_HASHED ; 
 scalar_t__ CMSG_SIGNED ; 
 scalar_t__ CMSG_TYPE_PARAM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ ,scalar_t__*,scalar_t__*) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 () ; 
 int /*<<< orphan*/  PKCS_7_ASN_ENCODING ; 
 int /*<<< orphan*/  FUNC4 (int,char*,scalar_t__) ; 
 int /*<<< orphan*/  old_crypt32 ; 

__attribute__((used)) static void FUNC5(void)
{
    BOOL ret;
    HCRYPTMSG msg;
    DWORD size, i, value;

    /* Crash
    ret = CryptMsgGetParam(NULL, 0, 0, NULL, NULL);
    ret = CryptMsgGetParam(NULL, 0, 0, NULL, &size);
    ret = CryptMsgGetParam(msg, 0, 0, NULL, NULL);
     */

    /* Decoded messages */
    msg = FUNC2(PKCS_7_ASN_ENCODING, 0, 0, 0, NULL, NULL);
    FUNC4(msg != NULL, "CryptMsgOpenToDecode failed: %x\n", FUNC3());
    /* For decoded messages, the type is always available */
    size = 0;
    ret = FUNC1(msg, CMSG_TYPE_PARAM, 0, NULL, &size);
    FUNC4(ret, "CryptMsgGetParam failed: %x\n", FUNC3());
    size = sizeof(value);
    ret = FUNC1(msg, CMSG_TYPE_PARAM, 0, &value, &size);
    FUNC4(ret, "CryptMsgGetParam failed: %x\n", FUNC3());
    /* For this (empty) message, the type isn't set */
    FUNC4(value == 0, "Expected type 0, got %d\n", value);
    FUNC0(msg);

    msg = FUNC2(PKCS_7_ASN_ENCODING, 0, CMSG_DATA, 0, NULL,
     NULL);
    FUNC4(msg != NULL, "CryptMsgOpenToDecode failed: %x\n", FUNC3());
    /* For explicitly typed messages, the type is known. */
    size = sizeof(value);
    ret = FUNC1(msg, CMSG_TYPE_PARAM, 0, &value, &size);
    FUNC4(ret, "CryptMsgGetParam failed: %x\n", FUNC3());
    FUNC4(value == CMSG_DATA, "Expected CMSG_DATA, got %d\n", value);
    for (i = CMSG_CONTENT_PARAM; !old_crypt32 && (i <= CMSG_CMS_SIGNER_INFO_PARAM); i++)
    {
        size = 0;
        ret = FUNC1(msg, i, 0, NULL, &size);
        FUNC4(!ret, "Parameter %d: expected failure\n", i);
    }
    FUNC0(msg);

    msg = FUNC2(PKCS_7_ASN_ENCODING, 0, CMSG_ENVELOPED, 0, NULL,
     NULL);
    FUNC4(msg != NULL, "CryptMsgOpenToDecode failed: %x\n", FUNC3());
    size = sizeof(value);
    ret = FUNC1(msg, CMSG_TYPE_PARAM, 0, &value, &size);
    FUNC4(ret, "CryptMsgGetParam failed: %x\n", FUNC3());
    FUNC4(value == CMSG_ENVELOPED, "Expected CMSG_ENVELOPED, got %d\n", value);
    for (i = CMSG_CONTENT_PARAM; !old_crypt32 && (i <= CMSG_CMS_SIGNER_INFO_PARAM); i++)
    {
        size = 0;
        ret = FUNC1(msg, i, 0, NULL, &size);
        FUNC4(!ret, "Parameter %d: expected failure\n", i);
    }
    FUNC0(msg);

    msg = FUNC2(PKCS_7_ASN_ENCODING, 0, CMSG_HASHED, 0, NULL,
     NULL);
    FUNC4(msg != NULL, "CryptMsgOpenToDecode failed: %x\n", FUNC3());
    size = sizeof(value);
    ret = FUNC1(msg, CMSG_TYPE_PARAM, 0, &value, &size);
    FUNC4(ret, "CryptMsgGetParam failed: %x\n", FUNC3());
    FUNC4(value == CMSG_HASHED, "Expected CMSG_HASHED, got %d\n", value);
    for (i = CMSG_CONTENT_PARAM; !old_crypt32 && (i <= CMSG_CMS_SIGNER_INFO_PARAM); i++)
    {
        size = 0;
        ret = FUNC1(msg, i, 0, NULL, &size);
        FUNC4(!ret, "Parameter %d: expected failure\n", i);
    }
    FUNC0(msg);

    msg = FUNC2(PKCS_7_ASN_ENCODING, 0, CMSG_SIGNED, 0, NULL,
     NULL);
    FUNC4(msg != NULL, "CryptMsgOpenToDecode failed: %x\n", FUNC3());
    size = sizeof(value);
    ret = FUNC1(msg, CMSG_TYPE_PARAM, 0, &value, &size);
    FUNC4(ret, "CryptMsgGetParam failed: %x\n", FUNC3());
    FUNC4(value == CMSG_SIGNED, "Expected CMSG_SIGNED, got %d\n", value);
    for (i = CMSG_CONTENT_PARAM; !old_crypt32 && (i <= CMSG_CMS_SIGNER_INFO_PARAM); i++)
    {
        size = 0;
        ret = FUNC1(msg, i, 0, NULL, &size);
        FUNC4(!ret, "Parameter %d: expected failure\n", i);
    }
    FUNC0(msg);

    /* Explicitly typed messages get their types set, even if they're invalid */
    msg = FUNC2(PKCS_7_ASN_ENCODING, 0, CMSG_ENCRYPTED, 0, NULL,
     NULL);
    FUNC4(msg != NULL, "CryptMsgOpenToDecode failed: %x\n", FUNC3());
    size = sizeof(value);
    ret = FUNC1(msg, CMSG_TYPE_PARAM, 0, &value, &size);
    FUNC4(ret, "CryptMsgGetParam failed: %x\n", FUNC3());
    FUNC4(value == CMSG_ENCRYPTED, "Expected CMSG_ENCRYPTED, got %d\n", value);
    FUNC0(msg);

    msg = FUNC2(PKCS_7_ASN_ENCODING, 0, 1000, 0, NULL, NULL);
    FUNC4(msg != NULL, "CryptMsgOpenToDecode failed: %x\n", FUNC3());
    size = sizeof(value);
    ret = FUNC1(msg, CMSG_TYPE_PARAM, 0, &value, &size);
    FUNC4(ret, "CryptMsgGetParam failed: %x\n", FUNC3());
    FUNC4(value == 1000, "Expected 1000, got %d\n", value);
    FUNC0(msg);
}