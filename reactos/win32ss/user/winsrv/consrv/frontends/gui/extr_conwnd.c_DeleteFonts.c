
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int VOID ;
typedef size_t ULONG ;
struct TYPE_3__ {int ** Font; } ;
typedef TYPE_1__* PGUI_CONSOLE_DATA ;


 size_t ARRAYSIZE (int **) ;
 int DeleteObject (int *) ;

VOID
DeleteFonts(PGUI_CONSOLE_DATA GuiData)
{
    ULONG i;
    for (i = 0; i < ARRAYSIZE(GuiData->Font); ++i)
    {
        if (GuiData->Font[i] != ((void*)0)) DeleteObject(GuiData->Font[i]);
        GuiData->Font[i] = ((void*)0);
    }
}
