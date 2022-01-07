
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ wchar_t ;


 int CP_UTF8 ;
 int WideCharToMultiByte (int ,int ,scalar_t__ const*,int,int *,int ,int *,int *) ;
 char* calloc (int,int) ;
 int sfree (char*) ;
 int wchar_to_utf8_no_alloc (scalar_t__ const*,char*,int) ;

__attribute__((used)) static __inline char* wchar_to_utf8(const wchar_t* wstr)
{
 int size = 0;
 char* str = ((void*)0);


 if (wstr[0] == 0)
  return calloc(1, 1);


 size = WideCharToMultiByte(CP_UTF8, 0, wstr, -1, ((void*)0), 0, ((void*)0), ((void*)0));
 if (size <= 1)
  return ((void*)0);

 if ((str = (char*)calloc(size, 1)) == ((void*)0))
  return ((void*)0);

 if (wchar_to_utf8_no_alloc(wstr, str, size) != size) {
  sfree(str);
  return ((void*)0);
 }

 return str;
}
