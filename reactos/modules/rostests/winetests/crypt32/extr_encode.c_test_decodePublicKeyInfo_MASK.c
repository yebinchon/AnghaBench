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
struct TYPE_3__ {int const* encoded; int const* encodedNoNull; int /*<<< orphan*/  info; int /*<<< orphan*/  decoded; } ;
typedef  size_t DWORD ;
typedef  int /*<<< orphan*/  CERT_PUBLIC_KEY_INFO ;
typedef  int BYTE ;
typedef  int BOOL ;

/* Variables and functions */
 size_t FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  CRYPT_DECODE_ALLOC_FLAG ; 
 scalar_t__ CRYPT_E_ASN1_CORRUPT ; 
 scalar_t__ FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int*) ; 
 scalar_t__ OSS_DATA_ERROR ; 
 int /*<<< orphan*/  X509_PUBLIC_KEY_INFO ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int,char*,scalar_t__) ; 
 int FUNC5 (size_t,int /*<<< orphan*/ ,int const*,int const,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int**,size_t*) ; 
 TYPE_1__* pubKeys ; 

__attribute__((used)) static void FUNC6(DWORD dwEncoding)
{
    static const BYTE bogusPubKeyInfo[] = { 0x30, 0x22, 0x30, 0x0d, 0x06, 0x06,
     0x2a, 0x86, 0x48, 0x86, 0xf7, 0x0d, 0x01, 0x01, 0x01, 0x01, 0x01, 0x03,
     0x11, 0x00, 0x00, 0x01, 0x02, 0x03, 0x04, 0x05, 0x06, 0x07, 0x08, 0x09,
     0x0a, 0x0b, 0x0c, 0x0d, 0x0e, 0x0f };
    DWORD i;
    BOOL ret;
    BYTE *buf = NULL;
    DWORD bufSize = 0;

    for (i = 0; i < FUNC0(pubKeys); i++)
    {
        /* The NULL form decodes to the decoded member */
        ret = FUNC5(dwEncoding, X509_PUBLIC_KEY_INFO,
         pubKeys[i].encoded, pubKeys[i].encoded[1] + 2, CRYPT_DECODE_ALLOC_FLAG,
         NULL, &buf, &bufSize);
        FUNC4(ret, "CryptDecodeObjectEx failed: %08x\n", FUNC1());
        if (ret)
        {
            FUNC3(&pubKeys[i].decoded,
             (CERT_PUBLIC_KEY_INFO *)buf);
            FUNC2(buf);
        }
        /* The non-NULL form decodes to the original */
        ret = FUNC5(dwEncoding, X509_PUBLIC_KEY_INFO,
         pubKeys[i].encodedNoNull, pubKeys[i].encodedNoNull[1] + 2,
         CRYPT_DECODE_ALLOC_FLAG, NULL, &buf, &bufSize);
        FUNC4(ret, "CryptDecodeObjectEx failed: %08x\n", FUNC1());
        if (ret)
        {
            FUNC3(&pubKeys[i].info, (CERT_PUBLIC_KEY_INFO *)buf);
            FUNC2(buf);
        }
    }
    /* Test with bogus (not valid DER) parameters */
    ret = FUNC5(dwEncoding, X509_PUBLIC_KEY_INFO,
     bogusPubKeyInfo, bogusPubKeyInfo[1] + 2, CRYPT_DECODE_ALLOC_FLAG,
     NULL, &buf, &bufSize);
    FUNC4(!ret && (FUNC1() == CRYPT_E_ASN1_CORRUPT ||
     FUNC1() == OSS_DATA_ERROR /* Win9x */),
     "Expected CRYPT_E_ASN1_CORRUPT or OSS_DATA_ERROR, got %08x\n",
     FUNC1());
}