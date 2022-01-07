
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ULONG ;
typedef int DWORD ;
typedef int BYTE ;


 int lendian32toh (int ) ;
 int memcpy (int *,int const*,int) ;

void StorageUtl_ReadDWord(const BYTE* buffer, ULONG offset, DWORD* value)
{
  DWORD tmp;

  memcpy(&tmp, buffer+offset, sizeof(DWORD));
  *value = lendian32toh(tmp);
}
