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
typedef  scalar_t__ HCRYPTMSG ;

/* Variables and functions */
 int /*<<< orphan*/  CMSG_ENCRYPTED ; 
 int /*<<< orphan*/  CMSG_SIGNED_AND_ENVELOPED ; 
 scalar_t__ CRYPT_E_INVALID_MSG_TYPE ; 
 scalar_t__ FUNC0 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ E_INVALIDARG ; 
 scalar_t__ FUNC1 () ; 
 int PKCS_7_ASN_ENCODING ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int X509_ASN_ENCODING ; 
 int /*<<< orphan*/  FUNC3 (int,char*,scalar_t__) ; 

__attribute__((used)) static void FUNC4(void)
{
    HCRYPTMSG msg;

    /* Crash
    msg = CryptMsgOpenToEncode(PKCS_7_ASN_ENCODING, 0, CMSG_ENVELOPED, NULL,
     NULL, NULL);
    msg = CryptMsgOpenToEncode(PKCS_7_ASN_ENCODING, 0, CMSG_HASHED, NULL, NULL,
     NULL);
    msg = CryptMsgOpenToEncode(PKCS_7_ASN_ENCODING, 0, CMSG_SIGNED, NULL, NULL,
     NULL);
     */

    /* Bad encodings */
    FUNC2(0xdeadbeef);
    msg = FUNC0(0, 0, 0, NULL, NULL, NULL);
    FUNC3(!msg && FUNC1() == E_INVALIDARG,
     "Expected E_INVALIDARG, got %x\n", FUNC1());
    FUNC2(0xdeadbeef);
    msg = FUNC0(X509_ASN_ENCODING, 0, 0, NULL, NULL, NULL);
    FUNC3(!msg && FUNC1() == E_INVALIDARG,
     "Expected E_INVALIDARG, got %x\n", FUNC1());

    /* Bad message types */
    FUNC2(0xdeadbeef);
    msg = FUNC0(PKCS_7_ASN_ENCODING, 0, 0, NULL, NULL, NULL);
    FUNC3(!msg && FUNC1() == CRYPT_E_INVALID_MSG_TYPE,
     "Expected CRYPT_E_INVALID_MSG_TYPE, got %x\n", FUNC1());
    FUNC2(0xdeadbeef);
    msg = FUNC0(X509_ASN_ENCODING | PKCS_7_ASN_ENCODING, 0, 0,
     NULL, NULL, NULL);
    FUNC3(!msg && FUNC1() == CRYPT_E_INVALID_MSG_TYPE,
     "Expected CRYPT_E_INVALID_MSG_TYPE, got %x\n", FUNC1());
    FUNC2(0xdeadbeef);
    msg = FUNC0(PKCS_7_ASN_ENCODING, 0,
     CMSG_SIGNED_AND_ENVELOPED, NULL, NULL, NULL);
    FUNC3(!msg && FUNC1() == CRYPT_E_INVALID_MSG_TYPE,
     "Expected CRYPT_E_INVALID_MSG_TYPE, got %x\n", FUNC1());
    FUNC2(0xdeadbeef);
    msg = FUNC0(PKCS_7_ASN_ENCODING, 0, CMSG_ENCRYPTED, NULL,
     NULL, NULL);
    FUNC3(!msg && FUNC1() == CRYPT_E_INVALID_MSG_TYPE,
     "Expected CRYPT_E_INVALID_MSG_TYPE, got %x\n", FUNC1());
}