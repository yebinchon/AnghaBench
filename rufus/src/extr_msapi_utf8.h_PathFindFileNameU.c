
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 size_t strlen (char const*) ;

__attribute__((used)) static __inline const char* PathFindFileNameU(const char* szPath)
{
 size_t i;
 if (szPath == ((void*)0))
  return ((void*)0);
 for (i = strlen(szPath); i != 0; i--) {
  if ((szPath[i] == '/') || (szPath[i] == '\\')) {
   i++;
   break;
  }
 }
 return &szPath[i];
}
