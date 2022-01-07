
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wchar_t ;
typedef int DWORD ;


 int CharUpperBuffW (int *,int ) ;
 int * calloc (int ,int) ;
 int free (int *) ;
 int utf8_to_wchar_no_alloc (char*,int *,int ) ;
 int wchar_to_utf8_no_alloc (int *,char*,int ) ;

__attribute__((used)) static __inline DWORD CharUpperBuffU(char* lpString, DWORD len)
{
 DWORD ret;
 wchar_t *wlpString = calloc(len, sizeof(wchar_t));
 if (wlpString == ((void*)0))
  return 0;
 utf8_to_wchar_no_alloc(lpString, wlpString, len);
 ret = CharUpperBuffW(wlpString, len);
 wchar_to_utf8_no_alloc(wlpString, lpString, len);
 free(wlpString);
 return ret;
}
