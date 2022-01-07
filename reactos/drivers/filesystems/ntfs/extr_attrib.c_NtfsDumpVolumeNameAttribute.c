
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int WCHAR ;
typedef int VOID ;
typedef scalar_t__ ULONG_PTR ;
struct TYPE_4__ {int ValueLength; scalar_t__ ValueOffset; } ;
struct TYPE_5__ {TYPE_1__ Resident; } ;
typedef scalar_t__ PWCHAR ;
typedef TYPE_2__* PNTFS_ATTR_RECORD ;


 int DbgPrint (char*,...) ;

__attribute__((used)) static
VOID
NtfsDumpVolumeNameAttribute(PNTFS_ATTR_RECORD Attribute)
{
    PWCHAR VolumeName;

    DbgPrint("  $VOLUME_NAME ");



    VolumeName = (PWCHAR)((ULONG_PTR)Attribute + Attribute->Resident.ValueOffset);
    DbgPrint(" '%.*S' ", Attribute->Resident.ValueLength / sizeof(WCHAR), VolumeName);
}
