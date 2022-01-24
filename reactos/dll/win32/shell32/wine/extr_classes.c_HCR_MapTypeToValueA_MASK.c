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
typedef  int /*<<< orphan*/  LPSTR ;
typedef  char* LPCSTR ;
typedef  int /*<<< orphan*/  LONG ;
typedef  int /*<<< orphan*/  HKEY ;
typedef  scalar_t__ BOOL ;

/* Variables and functions */
 scalar_t__ FALSE ; 
 int /*<<< orphan*/  HKEY_CLASSES_ROOT ; 
 int /*<<< orphan*/  KEY_READ ; 
 int /*<<< orphan*/  MAX_EXTENSION_LENGTH ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*,...) ; 
 scalar_t__ TRUE ; 
 int /*<<< orphan*/  FUNC5 (char*,char*,int /*<<< orphan*/ ) ; 

BOOL FUNC6(LPCSTR szExtension, LPSTR szFileType, LONG len, BOOL bPrependDot)
{
	HKEY	hkey;
	char	szTemp[MAX_EXTENSION_LENGTH + 2];

	FUNC4("%s %p\n", szExtension, szFileType);

        /* added because we do not want to have double dots */
        if (szExtension[0] == '.')
          bPrependDot = FALSE;

	if (bPrependDot)
	  szTemp[0] = '.';

	FUNC5(szTemp + (bPrependDot?1:0), szExtension, MAX_EXTENSION_LENGTH);

	if (FUNC2(HKEY_CLASSES_ROOT, szTemp, 0, KEY_READ, &hkey))
	{ 
	  return FALSE;
	}

#ifdef __REACTOS__
        if (!RegLoadMUIStringA(hkey, "FriendlyTypeName", szFileType, len, NULL, 0, NULL))
        {
            RegCloseKey(hkey);
            return TRUE;
        }
#endif

	if (FUNC3(hkey, NULL, szFileType, &len))
	{ 
	  FUNC0(hkey);
	  return FALSE;
	}

	FUNC0(hkey);

	FUNC4("--UE;\n} %s\n", szFileType);

	return TRUE;
}