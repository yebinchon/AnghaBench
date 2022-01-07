
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * byte_size_64; scalar_t__ value; } ;
typedef TYPE_1__ StrFormatSizeResult ;
typedef char* LPSTR ;


 int LocalFree (char*) ;
 char* StrDupA (int *) ;
 TYPE_1__* StrFormatSize_results ;
 int ok (int,char*,...) ;
 int strcmp (int *,char*) ;

__attribute__((used)) static void test_StrDupA(void)
{
  LPSTR lpszStr;
  const StrFormatSizeResult* result = StrFormatSize_results;

  while(result->value)
  {
    lpszStr = StrDupA(result->byte_size_64);

    ok(lpszStr != ((void*)0), "Dup failed\n");
    if (lpszStr)
    {
      ok(!strcmp(result->byte_size_64, lpszStr), "Copied string wrong\n");
      LocalFree(lpszStr);
    }
    result++;
  }




  lpszStr = StrDupA(((void*)0));
  ok(lpszStr == ((void*)0) || *lpszStr == '\0', "NULL string returned %p\n", lpszStr);
  LocalFree(lpszStr);
}
