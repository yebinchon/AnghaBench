
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef size_t ULONG ;
struct TYPE_6__ {size_t CollectionNumber; } ;
struct TYPE_5__ {size_t CollectionDescLength; TYPE_2__* CollectionDesc; } ;
typedef TYPE_1__* PHIDP_DEVICE_DESC ;
typedef TYPE_2__* PHIDP_COLLECTION_DESC ;


 int ASSERT (int ) ;
 int DPRINT1 (char*,size_t) ;
 int FALSE ;

PHIDP_COLLECTION_DESC
HidClassPDO_GetCollectionDescription(
    PHIDP_DEVICE_DESC DeviceDescription,
    ULONG CollectionNumber)
{
    ULONG Index;

    for(Index = 0; Index < DeviceDescription->CollectionDescLength; Index++)
    {
        if (DeviceDescription->CollectionDesc[Index].CollectionNumber == CollectionNumber)
        {



            return &DeviceDescription->CollectionDesc[Index];
        }
    }




    DPRINT1("[HIDCLASS] GetCollectionDescription CollectionNumber %x not found\n", CollectionNumber);
    ASSERT(FALSE);
    return ((void*)0);
}
