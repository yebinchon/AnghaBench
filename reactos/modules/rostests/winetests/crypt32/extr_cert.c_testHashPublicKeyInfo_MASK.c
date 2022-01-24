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
struct TYPE_4__ {int /*<<< orphan*/  member_0; } ;
struct TYPE_5__ {TYPE_1__ member_0; } ;
typedef  int DWORD ;
typedef  TYPE_2__ CERT_PUBLIC_KEY_INFO ;
typedef  int BYTE ;
typedef  int BOOL ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_2__*,int*,int*) ; 
 int /*<<< orphan*/  ERROR_FILE_NOT_FOUND ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  STATUS_ACCESS_VIOLATION ; 
 int /*<<< orphan*/  X509_ASN_ENCODING ; 
 scalar_t__ FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int*,int const*,int) ; 
 int /*<<< orphan*/  FUNC4 (int,char*,...) ; 

__attribute__((used)) static void FUNC5(void)
{
    BOOL ret;
    CERT_PUBLIC_KEY_INFO info = { { 0 } };
    DWORD len;

    /* Crash
    ret = CryptHashPublicKeyInfo(0, 0, 0, 0, NULL, NULL, NULL);
    ret = CryptHashPublicKeyInfo(0, 0, 0, 0, &info, NULL, NULL);
     */
    ret = FUNC0(0, 0, 0, 0, NULL, NULL, &len);
    FUNC4(!ret && FUNC1() == ERROR_FILE_NOT_FOUND,
     "Expected ERROR_FILE_NOT_FOUND, got %08x\n", FUNC1());
    /* Crashes on some win9x boxes */
    if (0)
    {
        ret = FUNC0(0, 0, 0, X509_ASN_ENCODING, NULL, NULL, &len);
        FUNC4(!ret && FUNC1() == STATUS_ACCESS_VIOLATION,
         "Expected STATUS_ACCESS_VIOLATION, got %08x\n", FUNC1());
    }
    ret = FUNC0(0, 0, 0, X509_ASN_ENCODING, &info, NULL, &len);
    FUNC4(ret ||
     FUNC2(!ret), /* win9x */
     "CryptHashPublicKeyInfo failed: %08x\n", FUNC1());
    if (ret)
    {
        FUNC4(len == 16, "Expected hash size 16, got %d\n", len);
        if (len == 16)
        {
            static const BYTE emptyHash[] = { 0xb8,0x51,0x3a,0x31,0x0e,0x9f,0x40,
             0x36,0x9c,0x92,0x45,0x1b,0x9d,0xc8,0xf9,0xf6 };
            BYTE buf[16];

            ret = FUNC0(0, 0, 0, X509_ASN_ENCODING, &info, buf,
             &len);
            FUNC4(ret, "CryptHashPublicKeyInfo failed: %08x\n", FUNC1());
            FUNC4(!FUNC3(buf, emptyHash, len), "Unexpected hash\n");
        }
    }
}