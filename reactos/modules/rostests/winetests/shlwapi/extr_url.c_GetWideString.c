
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WCHAR ;
typedef int LPWSTR ;


 int CP_ACP ;
 int GetProcessHeap () ;
 int HeapAlloc (int ,int ,int) ;
 int INTERNET_MAX_URL_LENGTH ;
 int MultiByteToWideChar (int ,int ,char const*,int,int ,int) ;

__attribute__((used)) static LPWSTR GetWideString(const char* szString)
{
  LPWSTR wszString = HeapAlloc(GetProcessHeap(), 0, (2*INTERNET_MAX_URL_LENGTH) * sizeof(WCHAR));

  MultiByteToWideChar(CP_ACP, 0, szString, -1, wszString, INTERNET_MAX_URL_LENGTH);

  return wszString;
}
