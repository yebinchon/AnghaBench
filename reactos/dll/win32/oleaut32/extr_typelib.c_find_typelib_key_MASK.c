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
typedef  int /*<<< orphan*/  typelibW ;
typedef  int /*<<< orphan*/  key_name ;
typedef  int WORD ;
typedef  char WCHAR ;
typedef  int /*<<< orphan*/  REFGUID ;
typedef  scalar_t__ INT ;
typedef  int /*<<< orphan*/  HKEY ;
typedef  int DWORD ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 scalar_t__ ERROR_SUCCESS ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  HKEY_CLASSES_ROOT ; 
 int /*<<< orphan*/  KEY_READ ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (char*,scalar_t__,scalar_t__,...) ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (char*,char const*,int) ; 
 int FUNC7 (char*,char*,scalar_t__*,scalar_t__*) ; 
 int FUNC8 (char*) ; 

__attribute__((used)) static BOOL FUNC9( REFGUID guid, WORD *wMaj, WORD *wMin )
{
    static const WCHAR typelibW[] = {'T','y','p','e','l','i','b','\\',0};
    WCHAR buffer[60];
    char key_name[16];
    DWORD len, i;
    INT best_maj = -1, best_min = -1;
    HKEY hkey;

    FUNC6( buffer, typelibW, sizeof(typelibW) );
    FUNC3( guid, buffer + FUNC8(buffer), 40 );

    if (FUNC2( HKEY_CLASSES_ROOT, buffer, 0, KEY_READ, &hkey ) != ERROR_SUCCESS)
        return FALSE;

    len = sizeof(key_name);
    i = 0;
    while (FUNC1(hkey, i++, key_name, &len, NULL, NULL, NULL, NULL) == ERROR_SUCCESS)
    {
        INT v_maj, v_min;

        if (FUNC7(key_name, "%x.%x", &v_maj, &v_min) == 2)
        {
            FUNC4("found %s: %x.%x\n", FUNC5(buffer), v_maj, v_min);

            if (*wMaj == 0xffff && *wMin == 0xffff)
            {
                if (v_maj > best_maj) best_maj = v_maj;
                if (v_min > best_min) best_min = v_min;
            }
            else if (*wMaj == v_maj)
            {
                best_maj = v_maj;

                if (*wMin == v_min)
                {
                    best_min = v_min;
                    break; /* exact match */
                }
                if (*wMin != 0xffff && v_min > best_min) best_min = v_min;
            }
        }
        len = sizeof(key_name);
    }
    FUNC0( hkey );

    FUNC4("found best_maj %d, best_min %d\n", best_maj, best_min);

    if (*wMaj == 0xffff && *wMin == 0xffff)
    {
        if (best_maj >= 0 && best_min >= 0)
        {
            *wMaj = best_maj;
            *wMin = best_min;
            return TRUE;
        }
    }

    if (*wMaj == best_maj && best_min >= 0)
    {
        *wMin = best_min;
        return TRUE;
    }
    return FALSE;
}