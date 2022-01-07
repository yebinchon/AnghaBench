
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WORD ;
typedef int ULONG ;
typedef int BYTE ;


 int htole16 (int ) ;
 int memcpy (int *,int *,int) ;

void StorageUtl_WriteWord(BYTE* buffer, ULONG offset, WORD value)
{
  value = htole16(value);
  memcpy(buffer+offset, &value, sizeof(WORD));
}
