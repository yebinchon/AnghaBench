
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int WCHAR ;
struct TYPE_3__ {int str_to_int; scalar_t__ string; } ;
typedef TYPE_1__ StrToIntResult ;


 int ARRAY_SIZE (int *) ;
 int CP_ACP ;
 int MultiByteToWideChar (int ,int ,scalar_t__,int,int *,int ) ;
 int StrToIntW (int *) ;
 TYPE_1__* StrToInt_results ;
 int ok (int,char*,scalar_t__,int) ;

__attribute__((used)) static void test_StrToIntW(void)
{
  WCHAR szBuff[256];
  const StrToIntResult *result = StrToInt_results;
  int return_val;

  while (result->string)
  {
    MultiByteToWideChar(CP_ACP, 0, result->string, -1, szBuff, ARRAY_SIZE(szBuff));
    return_val = StrToIntW(szBuff);
    ok(return_val == result->str_to_int, "converted '%s' wrong (%d)\n",
       result->string, return_val);
    result++;
  }
}
