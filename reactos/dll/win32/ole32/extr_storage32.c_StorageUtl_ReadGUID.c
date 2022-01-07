
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int ULONG ;
struct TYPE_3__ {int Data4; int Data3; int Data2; int Data1; } ;
typedef TYPE_1__ GUID ;
typedef int BYTE ;


 int StorageUtl_ReadDWord (int const*,int,int *) ;
 int StorageUtl_ReadWord (int const*,int,int *) ;
 int memcpy (int ,int const*,int) ;

void StorageUtl_ReadGUID(const BYTE* buffer, ULONG offset, GUID* value)
{
  StorageUtl_ReadDWord(buffer, offset, &(value->Data1));
  StorageUtl_ReadWord(buffer, offset+4, &(value->Data2));
  StorageUtl_ReadWord(buffer, offset+6, &(value->Data3));

  memcpy(value->Data4, buffer+offset+8, sizeof(value->Data4));
}
