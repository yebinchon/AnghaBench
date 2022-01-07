
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GetStdHandle (int ) ;
 int STD_OUTPUT_HANDLE ;
 int SetConsoleActiveScreenBuffer (int ) ;
 int SetConsoleMode (int ,int ) ;
 int hStdin ;
 int hStdout ;
 int inConMode ;
 int outConMode ;

void RestoreConsole()
{
 SetConsoleMode(hStdin, inConMode);
 SetConsoleMode(hStdout, outConMode);




}
