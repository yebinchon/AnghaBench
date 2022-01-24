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
typedef  int /*<<< orphan*/  REFIID ;
typedef  int /*<<< orphan*/  PVOID ;
typedef  scalar_t__* LPSTR ;
typedef  int /*<<< orphan*/  LPOLESTR ;
typedef  int /*<<< orphan*/  LPBYTE ;
typedef  int /*<<< orphan*/  HKEY ;
typedef  int DWORD ;
typedef  int /*<<< orphan*/  CHAR ;
typedef  scalar_t__ BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  CLSID_AdminFolderShortcut ; 
 int /*<<< orphan*/  CLSID_ControlPanel ; 
 int /*<<< orphan*/  CLSID_MyComputer ; 
 int /*<<< orphan*/  CLSID_MyDocuments ; 
 int /*<<< orphan*/  CLSID_RecycleBin ; 
 int /*<<< orphan*/  CLSID_ShellDesktop ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FALSE ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  HKEY_CURRENT_USER ; 
 int /*<<< orphan*/  IDS_ADMINISTRATIVETOOLS ; 
 int /*<<< orphan*/  IDS_CONTROLPANEL ; 
 int /*<<< orphan*/  IDS_DESKTOP ; 
 int /*<<< orphan*/  IDS_MYCOMPUTER ; 
 int /*<<< orphan*/  IDS_PERSONAL ; 
 int /*<<< orphan*/  IDS_RECYCLEBIN_FOLDER_NAME ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__*,int) ; 
 int /*<<< orphan*/  RRF_RT_REG_SZ ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,scalar_t__*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int*) ; 
 scalar_t__ S_OK ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (char*,scalar_t__*) ; 
 scalar_t__ TRUE ; 
 int /*<<< orphan*/  shell32_hInstance ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 

BOOL FUNC11(REFIID riid, LPSTR szDest, DWORD len)
{	HKEY	hkey;
	BOOL ret = FALSE;
	DWORD buflen = len;
#ifdef __REACTOS__
        CHAR szName[100];
        LPOLESTR pStr;
#endif

	szDest[0] = 0;

#ifdef __REACTOS__
        if (StringFromCLSID(riid, &pStr) == S_OK)
        {
            DWORD dwLen = buflen * sizeof(CHAR);
            sprintf(szName, "Software\\Microsoft\\Windows\\CurrentVersion\\Explorer\\CLSID\\%S", pStr);
            if (!RegGetValueA(HKEY_CURRENT_USER, szName, NULL, RRF_RT_REG_SZ, NULL, (PVOID)szDest, &dwLen))
            {
                ret = TRUE;
            }
            CoTaskMemFree(pStr);
        }
        if (!ret && HCR_RegOpenClassIDKey(riid, &hkey))
#else
	if (FUNC1(riid, &hkey))
#endif
	{
          if (!FUNC6(hkey,"LocalizedString",szDest,len,NULL,0,NULL) ||
              !FUNC7(hkey,"",0,NULL,(LPBYTE)szDest,&len))
          {
	    ret = TRUE;
	  }
	  FUNC4(hkey);
	}

	if (!ret || !szDest[0])
	{
	  if(FUNC2(riid, &CLSID_ShellDesktop))
	  {
	    if (FUNC3(shell32_hInstance, IDS_DESKTOP, szDest, buflen))
	      ret = TRUE;
	  }
	  else if (FUNC2(riid, &CLSID_MyComputer))
	  {
	    if(FUNC3(shell32_hInstance, IDS_MYCOMPUTER, szDest, buflen))
	      ret = TRUE;
	  }
#ifdef __REACTOS__
          else if (IsEqualIID(riid, &CLSID_MyDocuments))
          {
              if(LoadStringA(shell32_hInstance, IDS_PERSONAL, szDest, buflen))
                  ret = TRUE;
          }
          else if (IsEqualIID(riid, &CLSID_RecycleBin))
          {
              if(LoadStringA(shell32_hInstance, IDS_RECYCLEBIN_FOLDER_NAME, szDest, buflen))
                  ret = TRUE;
          }
          else if (IsEqualIID(riid, &CLSID_ControlPanel))
          {
              if(LoadStringA(shell32_hInstance, IDS_CONTROLPANEL, szDest, buflen))
                  ret = TRUE;
          }
          else if (IsEqualIID(riid, &CLSID_AdminFolderShortcut))
          {
              if(LoadStringA(shell32_hInstance, IDS_ADMINISTRATIVETOOLS, szDest, buflen))
                  ret = TRUE;
          }
#endif
	}

	FUNC9("-- (%s)\n", szDest);

	return ret;
}