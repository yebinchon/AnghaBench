
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char* Name; } ;
typedef TYPE_1__* PIMAGE_SECTION_HEADER ;



int
IsDebugSection(PIMAGE_SECTION_HEADER Section)
{

    return (Section->Name[0] == '/');
}
