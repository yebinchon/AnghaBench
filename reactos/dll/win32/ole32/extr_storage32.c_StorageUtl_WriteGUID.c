
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int ULONG ;
struct TYPE_3__ {int Data4; int Data3; int Data2; int Data1; } ;
typedef TYPE_1__ GUID ;
typedef int BYTE ;


 int StorageUtl_WriteDWord (int *,int,int ) ;
 int StorageUtl_WriteWord (int *,int,int ) ;
 int memcpy (int *,int ,int) ;

void StorageUtl_WriteGUID(BYTE* buffer, ULONG offset, const GUID* value)
{
  StorageUtl_WriteDWord(buffer, offset, value->Data1);
  StorageUtl_WriteWord(buffer, offset+4, value->Data2);
  StorageUtl_WriteWord(buffer, offset+6, value->Data3);

  memcpy(buffer+offset+8, value->Data4, sizeof(value->Data4));
}
