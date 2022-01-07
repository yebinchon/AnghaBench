
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int dest ;
typedef char* LPSTR ;
typedef char* LPCSTR ;


 int ARRAY_SIZE (char*) ;
 int memcmp (char*,char*,int) ;
 int memset (char*,char,int) ;
 int ok (int,char*,char*,char*,char,char,char,char,char,char,char,char) ;
 char* pStrCpyNXA (char*,char*,int ) ;
 int win_skip (char*) ;

__attribute__((used)) static void test_StrCpyNXA(void)
{
  LPCSTR lpSrc = "hello";
  LPSTR lpszRes;
  char dest[8];

  if (!pStrCpyNXA)
  {
    win_skip("StrCpyNXA() is not available\n");
    return;
  }

  memset(dest, '\n', sizeof(dest));
  lpszRes = pStrCpyNXA(dest, lpSrc, ARRAY_SIZE(dest));
  ok(lpszRes == dest + 5 && !memcmp(dest, "hello\0\n\n", sizeof(dest)),
       "StrCpyNXA: expected %p, \"hello\\0\\n\\n\", got %p, \"%d,%d,%d,%d,%d,%d,%d,%d\"\n",
       dest + 5, lpszRes, dest[0], dest[1], dest[2], dest[3], dest[4], dest[5], dest[6], dest[7]);
}
