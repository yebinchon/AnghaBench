
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int ULONGLONG ;
struct TYPE_6__ {int ValueLength; } ;
struct TYPE_5__ {int AllocatedSize; } ;
struct TYPE_7__ {TYPE_2__ Resident; TYPE_1__ NonResident; scalar_t__ IsNonResident; } ;
typedef TYPE_3__* PNTFS_ATTR_RECORD ;


 int ALIGN_UP_BY (int ,int ) ;
 int ATTR_RECORD_ALIGNMENT ;

ULONGLONG
AttributeAllocatedLength(PNTFS_ATTR_RECORD AttrRecord)
{
    if (AttrRecord->IsNonResident)
        return AttrRecord->NonResident.AllocatedSize;
    else
        return ALIGN_UP_BY(AttrRecord->Resident.ValueLength, ATTR_RECORD_ALIGNMENT);
}
