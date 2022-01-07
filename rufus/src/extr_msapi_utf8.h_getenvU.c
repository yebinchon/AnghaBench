
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wchar_t ;
typedef scalar_t__ DWORD ;


 scalar_t__ GetEnvironmentVariableW (int ,int *,scalar_t__) ;
 int * calloc (scalar_t__,int) ;
 int free (int *) ;
 char* wchar_to_utf8 (int *) ;
 int wconvert (char const*) ;
 int wfree (char const*) ;
 int wvarname ;

__attribute__((used)) static __inline char* getenvU(const char* varname)
{
 wconvert(varname);
 char* ret = ((void*)0);
 wchar_t* wbuf = ((void*)0);

 DWORD dwSize = GetEnvironmentVariableW(wvarname, wbuf, 0);
 wbuf = calloc(dwSize, sizeof(wchar_t));
 if (wbuf == ((void*)0)) {
  wfree(varname);
  return ((void*)0);
 }
 dwSize = GetEnvironmentVariableW(wvarname, wbuf, dwSize);
 if (dwSize != 0)
  ret = wchar_to_utf8(wbuf);
 free(wbuf);
 wfree(varname);
 return ret;
}
