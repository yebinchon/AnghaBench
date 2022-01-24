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
struct TYPE_3__ {int /*<<< orphan*/  member_0; } ;
typedef  int /*<<< orphan*/ * HCRYPTMSG ;
typedef  TYPE_1__ CMSG_STREAM_INFO ;

/* Variables and functions */
 int CMSG_DATA ; 
 int CMSG_ENCRYPTED ; 
 int CMSG_ENVELOPED ; 
 int CMSG_HASHED ; 
 int CMSG_SIGNED ; 
 int CMSG_SIGNED_AND_ENVELOPED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,TYPE_1__*) ; 
 scalar_t__ E_INVALIDARG ; 
 scalar_t__ FUNC2 () ; 
 int /*<<< orphan*/  PKCS_7_ASN_ENCODING ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  X509_ASN_ENCODING ; 
 int /*<<< orphan*/  FUNC4 (int,char*,scalar_t__) ; 

__attribute__((used)) static void FUNC5(void)
{
    HCRYPTMSG msg;
    CMSG_STREAM_INFO streamInfo = { 0 };

    FUNC3(0xdeadbeef);
    msg = FUNC1(0, 0, 0, 0, NULL, NULL);
    FUNC4(!msg && FUNC2() == E_INVALIDARG,
     "Expected E_INVALIDARG, got %x\n", FUNC2());

    /* Bad encodings */
    FUNC3(0xdeadbeef);
    msg = FUNC1(X509_ASN_ENCODING, 0, 0, 0, NULL, NULL);
    FUNC4(!msg && FUNC2() == E_INVALIDARG,
     "Expected E_INVALIDARG, got %x\n", FUNC2());
    FUNC3(0xdeadbeef);
    msg = FUNC1(X509_ASN_ENCODING, 0, CMSG_DATA, 0, NULL, NULL);
    FUNC4(!msg && FUNC2() == E_INVALIDARG,
     "Expected E_INVALIDARG, got %x\n", FUNC2());

    /* The message type can be explicit... */
    msg = FUNC1(PKCS_7_ASN_ENCODING, 0, CMSG_DATA, 0, NULL,
     NULL);
    FUNC4(msg != NULL, "CryptMsgOpenToDecode failed: %x\n", FUNC2());
    FUNC0(msg);
    msg = FUNC1(PKCS_7_ASN_ENCODING, 0, CMSG_ENVELOPED, 0, NULL,
     NULL);
    FUNC4(msg != NULL, "CryptMsgOpenToDecode failed: %x\n", FUNC2());
    FUNC0(msg);
    msg = FUNC1(PKCS_7_ASN_ENCODING, 0, CMSG_HASHED, 0, NULL,
     NULL);
    FUNC4(msg != NULL, "CryptMsgOpenToDecode failed: %x\n", FUNC2());
    FUNC0(msg);
    msg = FUNC1(PKCS_7_ASN_ENCODING, 0, CMSG_SIGNED, 0, NULL,
     NULL);
    FUNC4(msg != NULL, "CryptMsgOpenToDecode failed: %x\n", FUNC2());
    FUNC0(msg);
    msg = FUNC1(PKCS_7_ASN_ENCODING, 0,
     CMSG_SIGNED_AND_ENVELOPED, 0, NULL, NULL);
    FUNC4(msg != NULL, "CryptMsgOpenToDecode failed: %x\n", FUNC2());
    FUNC0(msg);
    /* or implicit.. */
    msg = FUNC1(PKCS_7_ASN_ENCODING, 0, 0, 0, NULL, NULL);
    FUNC4(msg != NULL, "CryptMsgOpenToDecode failed: %x\n", FUNC2());
    FUNC0(msg);
    /* or even invalid. */
    msg = FUNC1(PKCS_7_ASN_ENCODING, 0, CMSG_ENCRYPTED, 0, NULL,
     NULL);
    FUNC4(msg != NULL, "CryptMsgOpenToDecode failed: %x\n", FUNC2());
    FUNC0(msg);
    msg = FUNC1(PKCS_7_ASN_ENCODING, 0, 1000, 0, NULL, NULL);
    FUNC4(msg != NULL, "CryptMsgOpenToDecode failed: %x\n", FUNC2());
    FUNC0(msg);

    /* And even though the stream info parameter "must be set to NULL" for
     * CMSG_HASHED, it's still accepted.
     */
    msg = FUNC1(PKCS_7_ASN_ENCODING, 0, CMSG_HASHED, 0, NULL,
     &streamInfo);
    FUNC4(msg != NULL, "CryptMsgOpenToDecode failed: %x\n", FUNC2());
    FUNC0(msg);
}