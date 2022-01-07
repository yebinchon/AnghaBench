
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int digits; scalar_t__ ms; int time_interval; } ;
typedef TYPE_1__ StrFromTimeIntervalResult ;


 int StrFromTimeIntervalA (char*,int,scalar_t__,int ) ;
 TYPE_1__* StrFromTimeInterval_results ;
 int ok (int,char*,scalar_t__,int ,char*) ;
 int strcmp (int ,char*) ;

__attribute__((used)) static void test_StrFromTimeIntervalA(void)
{
  char szBuff[256];
  const StrFromTimeIntervalResult* result = StrFromTimeInterval_results;

  while(result->ms)
  {
    StrFromTimeIntervalA(szBuff, 256, result->ms, result->digits);

    ok(!strcmp(result->time_interval, szBuff), "Formatted %d %d wrong: %s\n",
       result->ms, result->digits, szBuff);
    result++;
  }
}
