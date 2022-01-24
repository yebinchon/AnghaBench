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
typedef  float WCHAR ;
struct TYPE_3__ {int /*<<< orphan*/  hTheme; int /*<<< orphan*/  pszSelectedSize; scalar_t__* pszAvailSizes; int /*<<< orphan*/  pszSelectedColor; scalar_t__* pszAvailColors; } ;
typedef  int /*<<< orphan*/ * PUXINI_FILE ;
typedef  TYPE_1__* PTHEME_FILE ;
typedef  scalar_t__* LPWSTR ;
typedef  int /*<<< orphan*/  HRSRC ;
typedef  scalar_t__ DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,float const*) ; 
 scalar_t__* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ ,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,scalar_t__*) ; 
 scalar_t__ FUNC6 (scalar_t__*) ; 

__attribute__((used)) static PUXINI_FILE FUNC7(PTHEME_FILE tf)
{
    static const WCHAR szFileResNamesResource[] = {
        'F','I','L','E','R','E','S','N','A','M','E','S','\0'
    };
    DWORD dwColorCount = 0;
    DWORD dwSizeCount = 0;
    DWORD dwColorNum = 0;
    DWORD dwSizeNum = 0;
    DWORD i;
    DWORD dwResourceIndex;
    LPWSTR tmp;
    HRSRC hrsc;

    /* Count the number of available colors & styles, and determine the index number
       of the color/style we are interested in
    */
    tmp = tf->pszAvailColors;
    while(*tmp) {
        if(!FUNC5(tf->pszSelectedColor, tmp))
            dwColorNum = dwColorCount;
        tmp += FUNC6(tmp)+1;
        dwColorCount++;
    }
    tmp = tf->pszAvailSizes;
    while(*tmp) {
        if(!FUNC5(tf->pszSelectedSize, tmp))
            dwSizeNum = dwSizeCount;
        tmp += FUNC6(tmp)+1;
        dwSizeCount++;
    }

    if(!(hrsc = FUNC0(tf->hTheme, FUNC2(1), szFileResNamesResource))) {
        FUNC3("FILERESNAMES map not found\n");
        return NULL;
    }
    tmp = FUNC1(tf->hTheme, hrsc);
    dwResourceIndex = (dwSizeCount * dwColorNum) + dwSizeNum;
    for(i=0; i < dwResourceIndex; i++) {
        tmp += FUNC6(tmp)+1;
    }
    return FUNC4(tf->hTheme, tmp);
}