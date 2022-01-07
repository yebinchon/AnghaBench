
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int VOID ;
typedef int HANDLE ;


 int ASSERT (int ) ;
 int ConsoleReattach (int ) ;
 int SetConsoleActiveScreenBuffer (int ) ;

__attribute__((used)) static VOID SetActiveScreenBuffer(HANDLE ScreenBuffer)
{
    ASSERT(ScreenBuffer);


    SetConsoleActiveScreenBuffer(ScreenBuffer);
    ConsoleReattach(ScreenBuffer);
}
