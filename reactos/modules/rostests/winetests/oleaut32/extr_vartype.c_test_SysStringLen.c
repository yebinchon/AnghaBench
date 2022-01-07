
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int dwLen; } ;
typedef TYPE_1__ INTERNAL_BSTR ;
typedef int BSTR ;


 int GetBSTR (TYPE_1__*) ;
 int SysStringLen (int ) ;
 int ok (int,char*,int) ;

__attribute__((used)) static void test_SysStringLen(void)
{
  INTERNAL_BSTR bstr;
  BSTR str = GetBSTR(&bstr);

  bstr.dwLen = 0;
  ok (SysStringLen(str) == 0, "Expected dwLen 0, got %d\n", SysStringLen(str));
  bstr.dwLen = 2;
  ok (SysStringLen(str) == 1, "Expected dwLen 1, got %d\n", SysStringLen(str));
}
