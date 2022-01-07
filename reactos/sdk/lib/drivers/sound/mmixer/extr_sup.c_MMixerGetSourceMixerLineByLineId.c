
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_10__ {int dwLineID; } ;
struct TYPE_13__ {TYPE_1__ Line; } ;
struct TYPE_11__ {struct TYPE_11__* Flink; } ;
struct TYPE_12__ {TYPE_2__ LineList; } ;
typedef TYPE_2__* PLIST_ENTRY ;
typedef TYPE_3__* LPMIXER_INFO ;
typedef TYPE_4__* LPMIXERLINE_EXT ;
typedef int DWORD ;


 scalar_t__ CONTAINING_RECORD (TYPE_2__*,int ,TYPE_2__*) ;
 int DPRINT (char*,int ,int ,TYPE_4__*) ;
 int MIXERLINE_EXT ;

LPMIXERLINE_EXT
MMixerGetSourceMixerLineByLineId(
    LPMIXER_INFO MixerInfo,
    DWORD dwLineID)
{
    PLIST_ENTRY Entry;
    LPMIXERLINE_EXT MixerLineSrc;


    Entry = MixerInfo->LineList.Flink;

    while(Entry != &MixerInfo->LineList)
    {
        MixerLineSrc = (LPMIXERLINE_EXT)CONTAINING_RECORD(Entry, MIXERLINE_EXT, Entry);
        DPRINT("dwLineID %x dwLineID %x MixerLineSrc %p\n", MixerLineSrc->Line.dwLineID, dwLineID, MixerLineSrc);
        if (MixerLineSrc->Line.dwLineID == dwLineID)
            return MixerLineSrc;

        Entry = Entry->Flink;
    }

    return ((void*)0);
}
