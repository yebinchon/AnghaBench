
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wchar_t ;


 int CP_UTF8 ;
 int WideCharToMultiByte (int ,int ,int const*,int,char*,int,int *,int *) ;
 scalar_t__ calloc (int,int) ;
 int sfree (char*) ;

__attribute__((used)) static __inline char* wchar_len_to_utf8(const wchar_t* wstr, int wlen)
{
 int size = 0;
 char* str = ((void*)0);


 size = WideCharToMultiByte(CP_UTF8, 0, wstr, wlen, ((void*)0), 0, ((void*)0), ((void*)0));
 if (size <= 1)
  return ((void*)0);

 if ((str = (char*)calloc(size, 1)) == ((void*)0))
  return ((void*)0);

 if (WideCharToMultiByte(CP_UTF8, 0, wstr, wlen, str, size, ((void*)0), ((void*)0)) != size) {
  sfree(str);
  return ((void*)0);
 }

 return str;
}
