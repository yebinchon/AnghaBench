
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ptrdiff_t ;


 char* THAlloc (int ) ;
 int memcpy (char*,char const*,int ) ;

__attribute__((used)) static char* THMemoryFile_cloneString(const char *str, ptrdiff_t size)
{
  char *cstr = THAlloc(size);
  memcpy(cstr, str, size);
  return cstr;
}
