
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WCHAR ;
typedef int * LPWSTR ;


 int CP_ACP ;
 int GetProcessHeap () ;
 int * HeapAlloc (int ,int ,int) ;
 int INTERNET_MAX_URL_LENGTH ;
 int MultiByteToWideChar (int ,int ,char const*,int,int *,int) ;

__attribute__((used)) static LPWSTR GetWideString(const char *src)
{
  WCHAR *ret;

  if (!src)
    return ((void*)0);

  ret = HeapAlloc(GetProcessHeap(), 0, (2*INTERNET_MAX_URL_LENGTH) * sizeof(WCHAR));

  MultiByteToWideChar(CP_ACP, 0, src, -1, ret, INTERNET_MAX_URL_LENGTH);

  return ret;
}
