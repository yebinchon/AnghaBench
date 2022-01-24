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
typedef  int /*<<< orphan*/  GUID ;
typedef  int DWORD ;
typedef  scalar_t__ BOOL ;

/* Variables and functions */
 int E_FAIL ; 
 scalar_t__ FALSE ; 
 int /*<<< orphan*/  const IID_Endianness ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/  const*,int /*<<< orphan*/ *) ; 
 int S_OK ; 
 int /*<<< orphan*/ ** TEST_guids ; 
 scalar_t__ TRUE ; 
 int /*<<< orphan*/  FUNC1 (int,char*,...) ; 
 int FUNC2 (int /*<<< orphan*/  const*,char*,int) ; 
 scalar_t__ FUNC3 (char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*) ; 
 int /*<<< orphan*/  FUNC5 (char*,char*) ; 

__attribute__((used)) static void FUNC6(void)
{
  const GUID **guids = TEST_guids;
  char szBuff[256];
  GUID guid;
  DWORD dwLen;
  BOOL bRet;
  int i = 0;
  BOOL is_vista = FALSE;

  if (!&pSHLWAPI_269 || !&pSHLWAPI_23)
    return;

  while (*guids)
  {
    dwLen = FUNC2(*guids, szBuff, 256);
    if (!i && dwLen == S_OK) is_vista = TRUE;  /* seems to return an HRESULT on vista */
    FUNC1(dwLen == (is_vista ? S_OK : 39), "wrong size %u for id %d\n", dwLen, i);

    bRet = FUNC3(szBuff, &guid);
    FUNC1(bRet != FALSE, "created invalid string '%s'\n", szBuff);

    if (bRet)
      FUNC1(FUNC0(*guids, &guid), "GUID created wrong %d\n", i);

    guids++;
    i++;
  }

  /* Test endianness */
  dwLen = FUNC2(&IID_Endianness, szBuff, 256);
  FUNC1(dwLen == (is_vista ? S_OK : 39), "wrong size %u for IID_Endianness\n", dwLen);

  FUNC1(!FUNC4(szBuff, "{01020304-0506-0708-090A-0B0C0D0E0F0A}"),
     "Endianness Broken, got '%s'\n", szBuff);

  /* test lengths */
  szBuff[0] = ':';
  dwLen = FUNC2(&IID_Endianness, szBuff, 0);
  FUNC1(dwLen == (is_vista ? E_FAIL : 0), "accepted bad length\n");
  FUNC1(szBuff[0] == ':', "wrote to buffer with no length\n");

  szBuff[0] = ':';
  dwLen = FUNC2(&IID_Endianness, szBuff, 38);
  FUNC1(dwLen == (is_vista ? E_FAIL : 0), "accepted bad length\n");
  FUNC1(szBuff[0] == ':', "wrote to buffer with no length\n");

  szBuff[0] = ':';
  dwLen = FUNC2(&IID_Endianness, szBuff, 39);
  FUNC1(dwLen == (is_vista ? S_OK : 39), "rejected ok length\n");
  FUNC1(szBuff[0] == '{', "Didn't write to buffer with ok length\n");

  /* Test string */
  FUNC5(szBuff, "{xxx-");
  bRet = FUNC3(szBuff, &guid);
  FUNC1(bRet == FALSE, "accepted invalid string\n");

  dwLen = FUNC2(&IID_Endianness, szBuff, 39);
  FUNC1(dwLen == (is_vista ? S_OK : 39), "rejected ok length\n");
  FUNC1(szBuff[0] == '{', "Didn't write to buffer with ok length\n");
}