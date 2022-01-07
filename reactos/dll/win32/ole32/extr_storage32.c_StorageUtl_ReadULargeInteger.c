
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int ULONG ;
struct TYPE_5__ {void* LowPart; void* HighPart; } ;
struct TYPE_6__ {TYPE_1__ u; } ;
typedef TYPE_2__ ULARGE_INTEGER ;
typedef int BYTE ;


 void* htole32 (void*) ;
 int memcpy (TYPE_2__*,int const*,int) ;

void StorageUtl_ReadULargeInteger(const BYTE* buffer, ULONG offset,
 ULARGE_INTEGER* value)
{







    memcpy(value, buffer + offset, sizeof(ULARGE_INTEGER));

}
