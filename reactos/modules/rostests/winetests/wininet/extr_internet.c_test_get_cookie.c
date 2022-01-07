
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int DWORD ;
typedef scalar_t__ BOOL ;


 scalar_t__ ERROR_NO_MORE_ITEMS ;
 scalar_t__ GetLastError () ;
 scalar_t__ InternetGetCookieA (char*,int *,int *,int*) ;
 int SetLastError (int) ;
 int ok (int,char*,...) ;

__attribute__((used)) static void test_get_cookie(void)
{
  DWORD len;
  BOOL ret;

  len = 1024;
  SetLastError(0xdeadbeef);
  ret = InternetGetCookieA("http://www.example.com", ((void*)0), ((void*)0), &len);
  ok(!ret && GetLastError() == ERROR_NO_MORE_ITEMS,
    "InternetGetCookie should have failed with %s and error %d\n",
    ret ? "TRUE" : "FALSE", GetLastError());
  ok(!len, "len = %u\n", len);
}
