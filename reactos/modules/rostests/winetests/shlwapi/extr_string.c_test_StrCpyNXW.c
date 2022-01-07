
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lpInit ;
typedef int dest ;
typedef char WCHAR ;
typedef char* LPWSTR ;


 int ARRAY_SIZE (char*) ;
 int memcmp (char*,char const*,int) ;
 int memcpy (char*,char const*,int) ;
 int ok (int,char*,char*,char*,char,char,char,char,char,char,char,char) ;
 char* pStrCpyNXW (char*,char const*,int ) ;
 int win_skip (char*) ;

__attribute__((used)) static void test_StrCpyNXW(void)
{
  static const WCHAR lpInit[] = { '\n','\n','\n','\n','\n','\n','\n','\n' };
  static const WCHAR lpSrc[] = { 'h','e','l','l','o','\0' };
  static const WCHAR lpRes[] = { 'h','e','l','l','o','\0','\n','\n' };
  LPWSTR lpszRes;
  WCHAR dest[8];

  if (!pStrCpyNXW)
  {
    win_skip("StrCpyNXW() is not available\n");
    return;
  }

  memcpy(dest, lpInit, sizeof(lpInit));
  lpszRes = pStrCpyNXW(dest, lpSrc, ARRAY_SIZE(dest));
  ok(lpszRes == dest + 5 && !memcmp(dest, lpRes, sizeof(dest)),
       "StrCpyNXW: expected %p, \"hello\\0\\n\\n\", got %p, \"%d,%d,%d,%d,%d,%d,%d,%d\"\n",
       dest + 5, lpszRes, dest[0], dest[1], dest[2], dest[3], dest[4], dest[5], dest[6], dest[7]);
}
