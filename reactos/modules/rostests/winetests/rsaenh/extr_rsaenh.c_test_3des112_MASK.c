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
typedef  int /*<<< orphan*/  des112 ;
struct TYPE_2__ {unsigned char* origstr; int strlen; int enclen; int buflen; int const* decstr; } ;
typedef  int /*<<< orphan*/  HCRYPTKEY ;
typedef  int DWORD ;
typedef  int BYTE ;
typedef  int BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  CALG_3DES_112 ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned char*,int*) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned char*,int*,int) ; 
 int /*<<< orphan*/  FALSE ; 
 int FUNC3 () ; 
 int NTE_BAD_ALGID ; 
 int NTE_BAD_DATA ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  TRUE ; 
 TYPE_1__* cTestData ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (unsigned char*,int const*,int) ; 
 int /*<<< orphan*/  FUNC7 (unsigned char*,unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC8 (int,char*,...) ; 
 int /*<<< orphan*/  FUNC9 (char*,unsigned char*,int) ; 

__attribute__((used)) static void FUNC10(void)
{
    HCRYPTKEY hKey;
    BOOL result;
    DWORD dwLen;
    unsigned char pbData[16], enc_data[16], bad_data[16];
    static const BYTE des112[16] = {
        0x8e, 0x0c, 0x3c, 0xa3, 0x05, 0x88, 0x5f, 0x7a,
        0x32, 0xa1, 0x06, 0x52, 0x64, 0xd2, 0x44, 0x1c };
    int i;

    result = FUNC5(CALG_3DES_112, &hKey, 0);
    if (!result) {
        /* rsaenh compiled without OpenSSL */
        FUNC8(FUNC3() == NTE_BAD_ALGID, "%08x\n", FUNC3());
        return;
    }

    for (i=0; i<sizeof(pbData); i++) pbData[i] = (unsigned char)i;
    
    dwLen = 13;
    result = FUNC2(hKey, 0, TRUE, 0, pbData, &dwLen, 16);
    FUNC8(result, "%08x\n", FUNC3());
    
    FUNC8(!FUNC6(pbData, des112, sizeof(des112)), "3DES_112 encryption failed!\n");

    result = FUNC0(hKey, 0, TRUE, 0, pbData, &dwLen);
    FUNC8(result, "%08x\n", FUNC3());

    for (i=0; i<4; i++)
    {
      FUNC7(pbData,cTestData[i].origstr,cTestData[i].strlen);

      dwLen = cTestData[i].enclen;
      result = FUNC2(hKey, 0, TRUE, 0, pbData, &dwLen, cTestData[i].buflen);
      FUNC8(result, "%08x\n", FUNC3());
      FUNC8(dwLen==cTestData[i].buflen,"length incorrect, got %d, expected %d\n",dwLen,cTestData[i].buflen);
      FUNC7(enc_data, pbData, cTestData[i].buflen);

      result = FUNC0(hKey, 0, TRUE, 0, pbData, &dwLen);
      FUNC8(result, "%08x\n", FUNC3());
      FUNC8(dwLen==cTestData[i].enclen,"length incorrect, got %d, expected %d\n",dwLen,cTestData[i].enclen);
      FUNC8(FUNC6(pbData,cTestData[i].decstr,cTestData[1].enclen)==0,"decryption incorrect %d\n",i);
      if((dwLen != cTestData[i].enclen) ||
         FUNC6(pbData,cTestData[i].decstr,cTestData[i].enclen))
      {
          FUNC9("expected",cTestData[i].decstr,cTestData[i].strlen);
          FUNC9("got",pbData,dwLen);
      }

      /* Test bad data:
         Decrypting a block of bad data with Final = TRUE should restore the
         initial state of the key as well as decrypting a block of good data.
       */

      /* Changing key state by setting Final = FALSE */
      dwLen = cTestData[i].buflen;
      FUNC7(pbData, enc_data, cTestData[i].buflen);
      result = FUNC0(hKey, 0, FALSE, 0, pbData, &dwLen);
      FUNC8(result, "%08x\n", FUNC3());

      /* Restoring key state by decrypting bad_data with Final = TRUE */
      FUNC7(bad_data, enc_data, cTestData[i].buflen);
      bad_data[cTestData[i].buflen - 1] = ~bad_data[cTestData[i].buflen - 1];
      FUNC4(0xdeadbeef);
      result = FUNC0(hKey, 0, TRUE, 0, bad_data, &dwLen);
      FUNC8(!result, "CryptDecrypt should failed!\n");
      FUNC8(FUNC3() == NTE_BAD_DATA, "%08x\n", FUNC3());
      FUNC8(dwLen==cTestData[i].buflen,"length incorrect, got %d, expected %d\n",dwLen,cTestData[i].buflen);
      FUNC8(FUNC6(pbData,cTestData[i].decstr,cTestData[1].enclen)==0,"decryption incorrect %d\n",i);

      /* Checking key state */
      dwLen = cTestData[i].buflen;
      FUNC7(pbData, enc_data, cTestData[i].buflen);
      result = FUNC0(hKey, 0, TRUE, 0, pbData, &dwLen);
      FUNC8(result, "%08x\n", FUNC3());
      FUNC8(dwLen==cTestData[i].enclen,"length incorrect, got %d, expected %d\n",dwLen,cTestData[i].enclen);
      FUNC8(FUNC6(pbData,cTestData[i].decstr,cTestData[1].enclen)==0,"decryption incorrect %d\n",i);
      if((dwLen != cTestData[i].enclen) ||
         FUNC6(pbData,cTestData[i].decstr,cTestData[i].enclen))
      {
          FUNC9("expected",cTestData[i].decstr,cTestData[i].strlen);
          FUNC9("got",pbData,dwLen);
      }
    }
    result = FUNC1(hKey);
    FUNC8(result, "%08x\n", FUNC3());
}