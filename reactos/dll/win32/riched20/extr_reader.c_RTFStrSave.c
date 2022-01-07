
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* heap_alloc (scalar_t__) ;
 char* lstrcpyA (char*,char const*) ;
 scalar_t__ lstrlenA (char const*) ;

__attribute__((used)) static inline char *RTFStrSave(const char *s)
{
 char *p;

 p = heap_alloc (lstrlenA(s) + 1);
 if (p == ((void*)0))
  return ((void*)0);
 return lstrcpyA (p, s);
}
