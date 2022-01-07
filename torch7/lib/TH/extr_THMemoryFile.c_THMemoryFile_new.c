
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int THFile ;


 int * THMemoryFile_newWithStorage (int *,char const*) ;

THFile *THMemoryFile_new(const char *mode)
{
  return THMemoryFile_newWithStorage(((void*)0), mode);
}
