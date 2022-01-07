
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wchar_t ;


 int CP_UTF8 ;
 int MultiByteToWideChar (int ,int ,char const*,int,int *,int ) ;
 int * calloc (int,int) ;
 int sfree (int *) ;
 int utf8_to_wchar_no_alloc (char const*,int *,int) ;

__attribute__((used)) static __inline wchar_t* utf8_to_wchar(const char* str)
{
 int size = 0;
 wchar_t* wstr = ((void*)0);

 if (str == ((void*)0))
  return ((void*)0);


 if (str[0] == 0)
  return calloc(1, sizeof(wchar_t));


 size = MultiByteToWideChar(CP_UTF8, 0, str, -1, ((void*)0), 0);
 if (size <= 1)
  return ((void*)0);

 if ((wstr = (wchar_t*)calloc(size, sizeof(wchar_t))) == ((void*)0))
  return ((void*)0);

 if (utf8_to_wchar_no_alloc(str, wstr, size) != size) {
  sfree(wstr);
  return ((void*)0);
 }
 return wstr;
}
