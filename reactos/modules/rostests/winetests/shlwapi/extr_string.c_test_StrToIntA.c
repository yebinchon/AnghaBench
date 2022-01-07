
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int str_to_int; scalar_t__ string; } ;
typedef TYPE_1__ StrToIntResult ;


 int StrToIntA (scalar_t__) ;
 TYPE_1__* StrToInt_results ;
 int ok (int,char*,scalar_t__,int) ;

__attribute__((used)) static void test_StrToIntA(void)
{
  const StrToIntResult *result = StrToInt_results;
  int return_val;

  while (result->string)
  {
    return_val = StrToIntA(result->string);
    ok(return_val == result->str_to_int, "converted '%s' wrong (%d)\n",
       result->string, return_val);
    result++;
  }
}
