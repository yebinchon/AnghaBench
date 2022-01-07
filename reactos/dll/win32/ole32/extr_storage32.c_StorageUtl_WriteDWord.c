
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ULONG ;
typedef int DWORD ;
typedef int BYTE ;


 int htole32 (int ) ;
 int memcpy (int *,int *,int) ;

void StorageUtl_WriteDWord(BYTE* buffer, ULONG offset, DWORD value)
{
  value = htole32(value);
  memcpy(buffer+offset, &value, sizeof(DWORD));
}
