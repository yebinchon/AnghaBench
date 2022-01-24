#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  pbData ;
typedef  int /*<<< orphan*/  des ;
struct TYPE_2__ {unsigned char* origstr; scalar_t__ strlen; scalar_t__ enclen; int buflen; int const* decstr; } ;
typedef  int /*<<< orphan*/  HCRYPTKEY ;
typedef  scalar_t__ DWORD ;
typedef  int BYTE ;
typedef  int BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  CALG_DES ; 
 scalar_t__ CRYPT_MODE_ECB ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned char*,scalar_t__*) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned char*,scalar_t__*,int) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,scalar_t__*,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FALSE ; 
 int FUNC5 () ; 
 int /*<<< orphan*/  KP_MODE ; 
 int NTE_BAD_ALGID ; 
 int NTE_BAD_DATA ; 
 scalar_t__ STRONG_PROV ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  TRUE ; 
 scalar_t__ FUNC7 (int) ; 
 TYPE_1__* cTestData ; 
 int FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC9 (unsigned char*,int const*,int) ; 
 int /*<<< orphan*/  FUNC10 (unsigned char*,unsigned char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC11 (int,char*,...) ; 
 int /*<<< orphan*/  FUNC12 (char*,unsigned char*,scalar_t__) ; 

__attribute__((used)) static void FUNC13(void) 
{
    HCRYPTKEY hKey;
    BOOL result;
    DWORD dwLen, dwMode;
    unsigned char pbData[16], enc_data[16], bad_data[16];
    static const BYTE des[16] = {
        0x58, 0x86, 0x42, 0x46, 0x65, 0x4b, 0x92, 0x62,
        0xcf, 0x0f, 0x65, 0x37, 0x43, 0x7a, 0x82, 0xb9 };
    static const BYTE des_old_behavior[16] = {
        0xb0, 0xfd, 0x11, 0x69, 0x76, 0xb1, 0xa1, 0x03,
        0xf7, 0xbc, 0x23, 0xaa, 0xd4, 0xc1, 0xc9, 0x55 };
    static const BYTE des_old_strong[16] = {
        0x9b, 0xc1, 0x2a, 0xec, 0x4a, 0xf9, 0x0f, 0x14,
        0x0a, 0xed, 0xf6, 0xd3, 0xdc, 0xad, 0xf7, 0x0c };
    int i;

    result = FUNC8(CALG_DES, &hKey, 0);
    if (!result) {
        /* rsaenh compiled without OpenSSL */
        FUNC11(FUNC5()==NTE_BAD_ALGID, "%08x\n", FUNC5());
        return;
    }

    dwMode = CRYPT_MODE_ECB;
    result = FUNC4(hKey, KP_MODE, (BYTE*)&dwMode, 0);
    FUNC11(result, "%08x\n", FUNC5());
    
    dwLen = sizeof(DWORD);
    result = FUNC3(hKey, KP_MODE, (BYTE*)&dwMode, &dwLen, 0);
    FUNC11(result, "%08x\n", FUNC5());
    FUNC11(dwMode == CRYPT_MODE_ECB, "Expected CRYPT_MODE_ECB, got %d\n", dwMode);
    
    for (i=0; i<sizeof(pbData); i++) pbData[i] = (unsigned char)i;
    
    dwLen = 13;
    result = FUNC2(hKey, 0, TRUE, 0, pbData, &dwLen, 16);
    FUNC11(result, "%08x\n", FUNC5());
    
    FUNC11(!FUNC9(pbData, des, sizeof(des)), "DES encryption failed!\n");

    result = FUNC0(hKey, 0, TRUE, 0, pbData, &dwLen);
    FUNC11(result, "%08x\n", FUNC5());

    for (i=0; i<4; i++)
    {
      FUNC10(pbData,cTestData[i].origstr,cTestData[i].strlen);

      dwLen = cTestData[i].enclen;
      result = FUNC2(hKey, 0, TRUE, 0, pbData, &dwLen, cTestData[i].buflen);
      FUNC11(result, "%08x\n", FUNC5());
      FUNC11(dwLen==cTestData[i].buflen,"length incorrect, got %d, expected %d\n",dwLen,cTestData[i].buflen);
      FUNC10(enc_data, pbData, cTestData[i].buflen);

      result = FUNC0(hKey, 0, TRUE, 0, pbData, &dwLen);
      FUNC11(result, "%08x\n", FUNC5());
      FUNC11(dwLen==cTestData[i].enclen,"length incorrect, got %d, expected %d\n",dwLen,cTestData[i].enclen);
      FUNC11(FUNC9(pbData,cTestData[i].decstr,cTestData[i].enclen)==0,"decryption incorrect %d\n",i);
      if((dwLen != cTestData[i].enclen) ||
         FUNC9(pbData,cTestData[i].decstr,cTestData[i].enclen))
      {
          FUNC12("expected",cTestData[i].decstr,cTestData[i].strlen);
          FUNC12("got",pbData,dwLen);
      }

      /* Test bad data:
         Decrypting a block of bad data with Final = TRUE should restore the
         initial state of the key as well as decrypting a block of good data.
       */

      /* Changing key state by setting Final = FALSE */
      dwLen = cTestData[i].buflen;
      FUNC10(pbData, enc_data, cTestData[i].buflen);
      result = FUNC0(hKey, 0, FALSE, 0, pbData, &dwLen);
      FUNC11(result, "%08x\n", FUNC5());

      /* Restoring key state by decrypting bad_data with Final = TRUE */
      FUNC10(bad_data, enc_data, cTestData[i].buflen);
      bad_data[cTestData[i].buflen - 1] = ~bad_data[cTestData[i].buflen - 1];
      FUNC6(0xdeadbeef);
      result = FUNC0(hKey, 0, TRUE, 0, bad_data, &dwLen);
      FUNC11(!result, "CryptDecrypt should failed!\n");
      FUNC11(FUNC5() == NTE_BAD_DATA, "%08x\n", FUNC5());
      FUNC11(dwLen==cTestData[i].buflen,"length incorrect, got %d, expected %d\n",dwLen,cTestData[i].buflen);
      FUNC11(FUNC9(pbData,cTestData[i].decstr,cTestData[1].enclen)==0,"decryption incorrect %d\n",i);

      /* Checking key state */
      dwLen = cTestData[i].buflen;
      FUNC10(pbData, enc_data, cTestData[i].buflen);
      result = FUNC0(hKey, 0, TRUE, 0, pbData, &dwLen);
      FUNC11(result, "%08x\n", FUNC5());
      FUNC11(dwLen==cTestData[i].enclen,"length incorrect, got %d, expected %d\n",dwLen,cTestData[i].enclen);
      FUNC11(FUNC9(pbData,cTestData[i].decstr,cTestData[1].enclen)==0,"decryption incorrect %d\n",i);
      if((dwLen != cTestData[i].enclen) ||
         FUNC9(pbData,cTestData[i].decstr,cTestData[i].enclen))
      {
          FUNC12("expected",cTestData[i].decstr,cTestData[i].strlen);
          FUNC12("got",pbData,dwLen);
      }
    }

    result = FUNC1(hKey);
    FUNC11(result, "%08x\n", FUNC5());

    /* Windows >= XP changed the way DES keys are derived, this test ensures we don't break that */
    FUNC8(CALG_DES, &hKey, 56);

    dwMode = CRYPT_MODE_ECB;
    result = FUNC4(hKey, KP_MODE, (BYTE*)&dwMode, 0);
    FUNC11(result, "%08x\n", FUNC5());

    for (i=0; i<sizeof(pbData); i++) pbData[i] = (unsigned char)i;

    dwLen = 13;
    result = FUNC2(hKey, 0, TRUE, 0, pbData, &dwLen, 16);
    FUNC11(result, "%08x\n", FUNC5());
    FUNC11(!FUNC9(pbData, des, sizeof(des)) || FUNC7(
    !FUNC9(pbData, des_old_behavior, sizeof(des)) ||
    (STRONG_PROV && !FUNC9(pbData, des_old_strong, sizeof(des)))) /* <= 2000 */,
       "DES encryption failed!\n");

    result = FUNC1(hKey);
    FUNC11(result, "%08x\n", FUNC5());
}