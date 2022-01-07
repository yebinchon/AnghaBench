
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_5__ ;
typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


typedef TYPE_2__* ULONG ;
struct TYPE_16__ {scalar_t__ QuadPart; } ;
struct TYPE_15__ {struct TYPE_15__* Flink; } ;
struct TYPE_13__ {scalar_t__ QuadPart; } ;
struct TYPE_14__ {TYPE_1__ FileOffset; } ;
typedef TYPE_2__* PNOCC_BCB ;
typedef TYPE_4__* PLIST_ENTRY ;
typedef TYPE_5__* PLARGE_INTEGER ;


 scalar_t__ CACHE_STRIPE ;
 TYPE_2__* CONTAINING_RECORD (TYPE_4__*,int ,int ) ;
 int CcCacheSections ;
 TYPE_2__* INVALID_CACHE ;
 int NOCC_BCB ;
 int ThisFileList ;

ULONG
CcpFindMatchingMap(PLIST_ENTRY Head,
                   PLARGE_INTEGER FileOffset,
                   ULONG Length)
{
    PLIST_ENTRY Entry;

    for (Entry = Head->Flink; Entry != Head; Entry = Entry->Flink)
    {

        PNOCC_BCB Bcb = CONTAINING_RECORD(Entry, NOCC_BCB, ThisFileList);


        if (FileOffset->QuadPart >= Bcb->FileOffset.QuadPart &&
            FileOffset->QuadPart < Bcb->FileOffset.QuadPart + CACHE_STRIPE)
        {

            return Bcb - CcCacheSections;
        }
    }



    return INVALID_CACHE;
}
