
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int VOID ;
typedef scalar_t__ ULONG_PTR ;
struct TYPE_5__ {scalar_t__ ValueOffset; } ;
struct TYPE_7__ {TYPE_1__ Resident; } ;
struct TYPE_6__ {int FileAttribute; } ;
typedef TYPE_2__* PSTANDARD_INFORMATION ;
typedef TYPE_3__* PNTFS_ATTR_RECORD ;


 int DbgPrint (char*,...) ;

__attribute__((used)) static
VOID
NtfsDumpStandardInformationAttribute(PNTFS_ATTR_RECORD Attribute)
{
    PSTANDARD_INFORMATION StandardInfoAttr;

    DbgPrint("  $STANDARD_INFORMATION ");



    StandardInfoAttr = (PSTANDARD_INFORMATION)((ULONG_PTR)Attribute + Attribute->Resident.ValueOffset);
    DbgPrint(" '%x' ", StandardInfoAttr->FileAttribute);
}
