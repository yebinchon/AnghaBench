
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t UInt32 ;
typedef int SRes ;
typedef scalar_t__ Byte ;


 int SZ_ERROR_ARCHIVE ;
 int SZ_OK ;

__attribute__((used)) static SRes SzReadFileNames(const Byte *p, size_t size, UInt32 numFiles, size_t *sizes)
{
  UInt32 i;
  size_t pos = 0;
  for (i = 0; i < numFiles; i++)
  {
    sizes[i] = pos;
    for (;;)
    {
      if (pos >= size)
        return SZ_ERROR_ARCHIVE;
      if (p[pos * 2] == 0 && p[pos * 2 + 1] == 0)
        break;
      pos++;
    }
    pos++;
  }
  sizes[i] = pos;
  return (pos == size) ? SZ_OK : SZ_ERROR_ARCHIVE;
}
