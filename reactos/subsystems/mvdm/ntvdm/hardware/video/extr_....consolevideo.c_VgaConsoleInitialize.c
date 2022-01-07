
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * HANDLE ;
typedef int BOOLEAN ;


 int ConsoleInfo ;
 int FALSE ;
 int GetConsoleCursorInfo (int *,int *) ;
 int GetConsoleScreenBufferInfo (int *,int *) ;
 int IsConsoleHandle (int *) ;
 int OrgConsoleBufferInfo ;
 int OrgConsoleCursorInfo ;
 int SetActiveScreenBuffer (int *) ;
 int TRUE ;
 int * TextConsoleBuffer ;

BOOLEAN VgaConsoleInitialize(HANDLE TextHandle)
{




    if (!IsConsoleHandle(TextHandle)) return FALSE;
    TextConsoleBuffer = TextHandle;


    if (!GetConsoleCursorInfo(TextConsoleBuffer, &OrgConsoleCursorInfo) ||
        !GetConsoleScreenBufferInfo(TextConsoleBuffer, &OrgConsoleBufferInfo))
    {
        TextConsoleBuffer = ((void*)0);
        return FALSE;
    }
    ConsoleInfo = OrgConsoleBufferInfo;


    SetActiveScreenBuffer(TextConsoleBuffer);

    return TRUE;
}
