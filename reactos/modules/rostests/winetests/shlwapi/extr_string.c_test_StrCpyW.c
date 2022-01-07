
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int WCHAR ;
struct TYPE_3__ {int byte_size_64; scalar_t__ value; } ;
typedef TYPE_1__ StrFormatSizeResult ;
typedef int * LPWSTR ;


 int ARRAY_SIZE (int *) ;
 int CP_ACP ;
 int MultiByteToWideChar (int ,int ,int ,int,int *,int ) ;
 int StrCmpW (int *,int *) ;
 int * StrCpyW (int *,int *) ;
 TYPE_1__* StrFormatSize_results ;
 int ok (int,char*,int ) ;

__attribute__((used)) static void test_StrCpyW(void)
{
  WCHAR szSrc[256];
  WCHAR szBuff[256];
  const StrFormatSizeResult* result = StrFormatSize_results;
  LPWSTR lpRes;

  while(result->value)
  {
    MultiByteToWideChar(CP_ACP, 0, result->byte_size_64, -1, szSrc, ARRAY_SIZE(szSrc));

    lpRes = StrCpyW(szBuff, szSrc);
    ok(!StrCmpW(szSrc, szBuff) && lpRes == szBuff, "Copied string %s wrong\n", result->byte_size_64);
    result++;
  }
}
