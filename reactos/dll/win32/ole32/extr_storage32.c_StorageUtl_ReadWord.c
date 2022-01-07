
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WORD ;
typedef int ULONG ;
typedef int BYTE ;


 int lendian16toh (int ) ;
 int memcpy (int *,int const*,int) ;

void StorageUtl_ReadWord(const BYTE* buffer, ULONG offset, WORD* value)
{
  WORD tmp;

  memcpy(&tmp, buffer+offset, sizeof(WORD));
  *value = lendian16toh(tmp);
}
