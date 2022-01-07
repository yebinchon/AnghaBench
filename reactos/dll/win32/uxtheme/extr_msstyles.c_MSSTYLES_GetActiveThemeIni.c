
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef float WCHAR ;
struct TYPE_3__ {int hTheme; int pszSelectedSize; scalar_t__* pszAvailSizes; int pszSelectedColor; scalar_t__* pszAvailColors; } ;
typedef int * PUXINI_FILE ;
typedef TYPE_1__* PTHEME_FILE ;
typedef scalar_t__* LPWSTR ;
typedef int HRSRC ;
typedef scalar_t__ DWORD ;


 int FindResourceW (int ,int ,float const*) ;
 scalar_t__* LoadResource (int ,int ) ;
 int MAKEINTRESOURCEW (int) ;
 int TRACE (char*) ;
 int * UXINI_LoadINI (int ,scalar_t__*) ;
 int lstrcmpiW (int ,scalar_t__*) ;
 scalar_t__ lstrlenW (scalar_t__*) ;

__attribute__((used)) static PUXINI_FILE MSSTYLES_GetActiveThemeIni(PTHEME_FILE tf)
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




    tmp = tf->pszAvailColors;
    while(*tmp) {
        if(!lstrcmpiW(tf->pszSelectedColor, tmp))
            dwColorNum = dwColorCount;
        tmp += lstrlenW(tmp)+1;
        dwColorCount++;
    }
    tmp = tf->pszAvailSizes;
    while(*tmp) {
        if(!lstrcmpiW(tf->pszSelectedSize, tmp))
            dwSizeNum = dwSizeCount;
        tmp += lstrlenW(tmp)+1;
        dwSizeCount++;
    }

    if(!(hrsc = FindResourceW(tf->hTheme, MAKEINTRESOURCEW(1), szFileResNamesResource))) {
        TRACE("FILERESNAMES map not found\n");
        return ((void*)0);
    }
    tmp = LoadResource(tf->hTheme, hrsc);
    dwResourceIndex = (dwSizeCount * dwColorNum) + dwSizeNum;
    for(i=0; i < dwResourceIndex; i++) {
        tmp += lstrlenW(tmp)+1;
    }
    return UXINI_LoadINI(tf->hTheme, tmp);
}
