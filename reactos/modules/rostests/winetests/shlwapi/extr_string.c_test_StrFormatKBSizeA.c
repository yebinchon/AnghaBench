
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int kb_size; scalar_t__ value; int kb_size2; scalar_t__ kb_size_broken; } ;
typedef TYPE_1__ StrFormatSizeResult ;


 TYPE_1__* StrFormatSize_results ;
 int ok (int,char*,int ,char*,int ) ;
 int pStrFormatKBSizeA (scalar_t__,char*,int) ;
 int strcmp (int ,char*) ;
 int win_skip (char*) ;
 int wine_dbgstr_longlong (scalar_t__) ;

__attribute__((used)) static void test_StrFormatKBSizeA(void)
{
  char szBuff[256];
  const StrFormatSizeResult* result = StrFormatSize_results;

  if (!pStrFormatKBSizeA)
  {
    win_skip("StrFormatKBSizeA() is not available\n");
    return;
  }

  while(result->value)
  {
    pStrFormatKBSizeA(result->value, szBuff, 256);



    ok(!strcmp(result->kb_size, szBuff) ||
      (result->kb_size_broken && !strcmp(result->kb_size2, szBuff)),
        "Formatted %s wrong: got %s, expected %s\n",
       wine_dbgstr_longlong(result->value), szBuff, result->kb_size);
    result++;
  }
}
