
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int VOID ;
typedef int ULONG_PTR ;
typedef int ULONG ;
struct TYPE_6__ {int BytesInUse; } ;
struct TYPE_5__ {int Length; int Type; } ;
typedef TYPE_1__* PNTFS_ATTR_RECORD ;
typedef TYPE_2__* PFILE_RECORD_HEADER ;


 int ASSERT (int) ;
 int ATTR_RECORD_ALIGNMENT ;
 int AttributeEnd ;

VOID
SetFileRecordEnd(PFILE_RECORD_HEADER FileRecord,
                 PNTFS_ATTR_RECORD AttrEnd,
                 ULONG EndMarker)
{

    ASSERT(((ULONG_PTR)AttrEnd - (ULONG_PTR)FileRecord) % ATTR_RECORD_ALIGNMENT == 0);


    AttrEnd->Type = AttributeEnd;


    AttrEnd->Length = EndMarker;


    FileRecord->BytesInUse = (ULONG_PTR)AttrEnd - (ULONG_PTR)FileRecord + sizeof(ULONG) * 2;
}
