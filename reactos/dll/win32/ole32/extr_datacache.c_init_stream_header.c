
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int lindex; int dwAspect; scalar_t__ ptd; } ;
struct TYPE_8__ {int advise_flags; TYPE_1__ fmtetc; } ;
struct TYPE_7__ {int tdSize; scalar_t__ dwSize; scalar_t__ dwObjectExtentY; scalar_t__ dwObjectExtentX; scalar_t__ unknown7; int advf; int lindex; int dvAspect; } ;
typedef TYPE_2__ PresentationDataHeader ;
typedef TYPE_3__ DataCacheEntry ;


 int FIXME (char*) ;

__attribute__((used)) static void init_stream_header(DataCacheEntry *entry, PresentationDataHeader *header)
{
    if (entry->fmtetc.ptd)
        FIXME("ptd not serialized\n");
    header->tdSize = sizeof(header->tdSize);
    header->dvAspect = entry->fmtetc.dwAspect;
    header->lindex = entry->fmtetc.lindex;
    header->advf = entry->advise_flags;
    header->unknown7 = 0;
    header->dwObjectExtentX = 0;
    header->dwObjectExtentY = 0;
    header->dwSize = 0;
}
