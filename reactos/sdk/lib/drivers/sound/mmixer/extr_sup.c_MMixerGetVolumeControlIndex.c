
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t ULONG ;
struct TYPE_3__ {size_t ValuesCount; scalar_t__* Values; size_t InputSteppingDelta; } ;
typedef TYPE_1__* LPMIXERVOLUME_DATA ;
typedef scalar_t__ LONG ;



ULONG
MMixerGetVolumeControlIndex(
    LPMIXERVOLUME_DATA VolumeData,
    LONG Value)
{
    ULONG Index;

    for(Index = 0; Index < VolumeData->ValuesCount; Index++)
    {
        if (VolumeData->Values[Index] > Value)
        {
            return VolumeData->InputSteppingDelta * Index;
        }
    }
    return VolumeData->InputSteppingDelta * (VolumeData->ValuesCount-1);
}
