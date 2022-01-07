
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int WCHAR ;
struct TYPE_3__ {int kb_size; scalar_t__ value; } ;
typedef TYPE_1__ StrFormatSizeResult ;


 int ARRAY_SIZE (char*) ;
 int CP_ACP ;
 TYPE_1__* StrFormatSize_results ;
 int WideCharToMultiByte (int ,int ,int *,int,char*,int ,int *,int *) ;
 int ok (int,char*,int ,char*,int ) ;
 int pStrFormatKBSizeW (scalar_t__,int *,int) ;
 int strcmp (int ,char*) ;
 int win_skip (char*) ;
 int wine_dbgstr_longlong (scalar_t__) ;

__attribute__((used)) static void test_StrFormatKBSizeW(void)
{
  WCHAR szBuffW[256];
  char szBuff[256];
  const StrFormatSizeResult* result = StrFormatSize_results;

  if (!pStrFormatKBSizeW)
  {
    win_skip("StrFormatKBSizeW() is not available\n");
    return;
  }

  while(result->value)
  {
    pStrFormatKBSizeW(result->value, szBuffW, 256);
    WideCharToMultiByte(CP_ACP, 0, szBuffW, -1, szBuff, ARRAY_SIZE(szBuff), ((void*)0), ((void*)0));

    ok(!strcmp(result->kb_size, szBuff), "Formatted %s wrong: got %s, expected %s\n",
       wine_dbgstr_longlong(result->value), szBuff, result->kb_size);
    result++;
  }
}
