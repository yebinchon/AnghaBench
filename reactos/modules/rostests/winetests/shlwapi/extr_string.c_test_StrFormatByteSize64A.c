
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int byte_size_64; scalar_t__ value; } ;
typedef TYPE_1__ StrFormatSizeResult ;


 TYPE_1__* StrFormatSize_results ;
 int ok (int,char*,int ,char*,int ) ;
 int pStrFormatByteSize64A (scalar_t__,char*,int) ;
 int strcmp (int ,char*) ;
 int win_skip (char*) ;
 int wine_dbgstr_longlong (scalar_t__) ;

__attribute__((used)) static void test_StrFormatByteSize64A(void)
{
  char szBuff[256];
  const StrFormatSizeResult* result = StrFormatSize_results;

  if (!pStrFormatByteSize64A)
  {
    win_skip("StrFormatByteSize64A() is not available\n");
    return;
  }

  while(result->value)
  {
    pStrFormatByteSize64A(result->value, szBuff, 256);

    ok(!strcmp(result->byte_size_64, szBuff),
        "Formatted %s wrong: got %s, expected %s\n",
       wine_dbgstr_longlong(result->value), szBuff, result->byte_size_64);

    result++;
  }
}
