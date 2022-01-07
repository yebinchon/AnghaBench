
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int ULONG ;
struct TYPE_5__ {void* LowPart; void* HighPart; } ;
struct TYPE_6__ {TYPE_1__ u; } ;
typedef TYPE_2__ const ULARGE_INTEGER ;
typedef int BYTE ;


 void* htole32 (void*) ;
 int memcpy (int *,TYPE_2__ const*,int) ;

void StorageUtl_WriteULargeInteger(BYTE* buffer, ULONG offset,
 const ULARGE_INTEGER *value)
{







    memcpy(buffer + offset, value, sizeof(ULARGE_INTEGER));

}
