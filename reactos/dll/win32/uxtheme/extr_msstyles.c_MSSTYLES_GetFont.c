
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int attr ;
typedef char WCHAR ;
struct TYPE_3__ {char* lfFaceName; int lfHeight; void* lfStrikeOut; void* lfUnderline; void* lfItalic; int lfWeight; int lfCharSet; } ;
typedef int LPCWSTR ;
typedef TYPE_1__ LOGFONTW ;
typedef int HRESULT ;
typedef int HDC ;


 int DEFAULT_CHARSET ;
 int E_PROP_ID_UNSUPPORTED ;
 int FW_BOLD ;
 int FW_REGULAR ;
 int GetDC (int ) ;
 int GetDeviceCaps (int ,int ) ;
 int LF_FACESIZE ;
 int LOGPIXELSY ;
 int MSSTYLES_GetNextInteger (int ,int ,int *,int*) ;
 scalar_t__ MSSTYLES_GetNextToken (int ,int ,int *,char*,int) ;
 int MulDiv (int,int ,int) ;
 int ReleaseDC (int ,int ) ;
 int S_OK ;
 int TRACE (char*) ;
 void* TRUE ;
 int lstrcmpiW (char const*,char*) ;

__attribute__((used)) static HRESULT MSSTYLES_GetFont (LPCWSTR lpCur, LPCWSTR lpEnd,
                                 LPCWSTR *lpValEnd, LOGFONTW* pFont)
{
    static const WCHAR szBold[] = {'b','o','l','d','\0'};
    static const WCHAR szItalic[] = {'i','t','a','l','i','c','\0'};
    static const WCHAR szUnderline[] = {'u','n','d','e','r','l','i','n','e','\0'};
    static const WCHAR szStrikeOut[] = {'s','t','r','i','k','e','o','u','t','\0'};
    int pointSize;
    WCHAR attr[32];

    if(!MSSTYLES_GetNextToken(lpCur, lpEnd, &lpCur, pFont->lfFaceName, LF_FACESIZE)) {
        TRACE("Property is there, but failed to get face name\n");
        *lpValEnd = lpCur;
        return E_PROP_ID_UNSUPPORTED;
    }
    if(!MSSTYLES_GetNextInteger(lpCur, lpEnd, &lpCur, &pointSize)) {
        TRACE("Property is there, but failed to get point size\n");
        *lpValEnd = lpCur;
        return E_PROP_ID_UNSUPPORTED;
    }
    if(pointSize > 0)
    {
        HDC hdc = GetDC(0);
        pointSize = -MulDiv(pointSize, GetDeviceCaps(hdc, LOGPIXELSY), 72);
        ReleaseDC(0, hdc);
    }

    pFont->lfHeight = pointSize;
    pFont->lfWeight = FW_REGULAR;
    pFont->lfCharSet = DEFAULT_CHARSET;
    while(MSSTYLES_GetNextToken(lpCur, lpEnd, &lpCur, attr, sizeof(attr)/sizeof(attr[0]))) {
        if(!lstrcmpiW(szBold, attr)) pFont->lfWeight = FW_BOLD;
        else if(!lstrcmpiW(szItalic, attr)) pFont->lfItalic = TRUE;
        else if(!lstrcmpiW(szUnderline, attr)) pFont->lfUnderline = TRUE;
        else if(!lstrcmpiW(szStrikeOut, attr)) pFont->lfStrikeOut = TRUE;
    }
    *lpValEnd = lpCur;
    return S_OK;
}
