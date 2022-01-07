
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef char WCHAR ;
struct TYPE_3__ {int dwCodePage; } ;
typedef int SYSTEMTIME ;
typedef TYPE_1__ NLS_FORMAT_NODE ;
typedef char* LPSTR ;
typedef int LPCSTR ;
typedef int LCID ;
typedef int INT ;
typedef int DWORD ;


 int ARRAY_SIZE (char*) ;
 int CP_ACP ;
 int ERROR_INVALID_PARAMETER ;
 int LOCALE_USE_CP_ACP ;
 int MultiByteToWideChar (int,int ,int ,int,char*,int) ;
 int NLS_GetDateTimeFormatW (int ,int,int const*,char*,char*,int) ;
 TYPE_1__* NLS_GetFormats (int ,int) ;
 scalar_t__ NLS_IsUnicodeOnlyLcid (int ) ;
 int SetLastError (int ) ;
 int TRACE (char*,int ,int,int const*,int ,char*,int) ;
 int WideCharToMultiByte (int,int ,char*,int,char*,int,int ,int ) ;
 int debugstr_a (int ) ;

__attribute__((used)) static INT NLS_GetDateTimeFormatA(LCID lcid, DWORD dwFlags,
                                  const SYSTEMTIME* lpTime,
                                  LPCSTR lpFormat, LPSTR lpStr, INT cchOut)
{
  DWORD cp = CP_ACP;
  WCHAR szFormat[128], szOut[128];
  INT iRet;

  TRACE("(0x%04x,0x%08x,%p,%s,%p,%d)\n", lcid, dwFlags, lpTime,
        debugstr_a(lpFormat), lpStr, cchOut);

  if (NLS_IsUnicodeOnlyLcid(lcid))
  {
    SetLastError(ERROR_INVALID_PARAMETER);
    return 0;
  }

  if (!(dwFlags & LOCALE_USE_CP_ACP))
  {
    const NLS_FORMAT_NODE *node = NLS_GetFormats(lcid, dwFlags);
    if (!node)
    {
      SetLastError(ERROR_INVALID_PARAMETER);
      return 0;
    }

    cp = node->dwCodePage;
  }

  if (lpFormat)
    MultiByteToWideChar(cp, 0, lpFormat, -1, szFormat, ARRAY_SIZE(szFormat));

  if (cchOut > (int) ARRAY_SIZE(szOut))
    cchOut = ARRAY_SIZE(szOut);

  szOut[0] = '\0';

  iRet = NLS_GetDateTimeFormatW(lcid, dwFlags, lpTime, lpFormat ? szFormat : ((void*)0),
                                lpStr ? szOut : ((void*)0), cchOut);

  if (lpStr)
  {
    if (szOut[0])
      WideCharToMultiByte(cp, 0, szOut, iRet ? -1 : cchOut, lpStr, cchOut, 0, 0);
    else if (cchOut && iRet)
      *lpStr = '\0';
  }
  return iRet;
}
