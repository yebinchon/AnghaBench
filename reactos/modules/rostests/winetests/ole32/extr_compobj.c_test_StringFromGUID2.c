
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WCHAR ;


 int CLSID_StdFont ;
 int GetLastError () ;
 int SetLastError (int) ;
 int StringFromGUID2 (int *,int *,int) ;
 int lstrcmpiW (int *,int ) ;
 int memset (int *,int ,int) ;
 int ok (int,char*,...) ;
 int wszCLSID_StdFont ;

__attribute__((used)) static void test_StringFromGUID2(void)
{
  WCHAR str[50];
  int len;


  SetLastError(0xdeadbeef);
  len = StringFromGUID2(((void*)0),str,50);
  ok(len == 0, "len: %d (expected 0)\n", len);
  ok(GetLastError() == 0xdeadbeef, "Expected 0xdeadbeef, got %x\n", GetLastError());


  len = StringFromGUID2(&CLSID_StdFont,str,50);
  ok(len == 39, "len: %d (expected 39)\n", len);
  ok(!lstrcmpiW(str, wszCLSID_StdFont),"string wasn't equal for CLSID_StdFont\n");

  memset(str,0,sizeof str);
  len = StringFromGUID2(&CLSID_StdFont,str,39);
  ok(len == 39, "len: %d (expected 39)\n", len);
  ok(!lstrcmpiW(str, wszCLSID_StdFont),"string wasn't equal for CLSID_StdFont\n");

  len = StringFromGUID2(&CLSID_StdFont,str,38);
  ok(len == 0, "len: %d (expected 0)\n", len);

  len = StringFromGUID2(&CLSID_StdFont,str,30);
  ok(len == 0, "len: %d (expected 0)\n", len);
}
