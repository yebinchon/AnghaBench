
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int VOID ;
struct TYPE_7__ {TYPE_3__* Buffer; } ;
struct TYPE_6__ {TYPE_3__* Buffer; } ;
struct TYPE_8__ {TYPE_2__ AdminComment; TYPE_1__ Name; } ;
typedef TYPE_3__* PALIAS_GENERAL_INFORMATION ;


 int SamFreeMemory (TYPE_3__*) ;

__attribute__((used)) static
VOID
FreeAliasInfo(PALIAS_GENERAL_INFORMATION AliasInfo)
{
    if (AliasInfo->Name.Buffer != ((void*)0))
        SamFreeMemory(AliasInfo->Name.Buffer);

    if (AliasInfo->AdminComment.Buffer != ((void*)0))
        SamFreeMemory(AliasInfo->AdminComment.Buffer);

    SamFreeMemory(AliasInfo);
}
