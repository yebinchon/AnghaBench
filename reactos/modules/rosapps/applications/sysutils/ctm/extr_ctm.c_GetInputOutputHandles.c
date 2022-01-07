
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* HANDLE ;


 int CONSOLE_TEXTMODE_BUFFER ;
 void* CreateConsoleScreenBuffer (int,int,int ,int ,int ) ;
 scalar_t__ FALSE ;
 int FILE_SHARE_READ ;
 int FILE_SHARE_WRITE ;
 int GENERIC_READ ;
 int GENERIC_WRITE ;
 void* GetStdHandle (int ) ;
 int STD_INPUT_HANDLE ;
 int STD_OUTPUT_HANDLE ;
 scalar_t__ SetConsoleActiveScreenBuffer (void*) ;
 void* hStdin ;
 void* hStdout ;

void GetInputOutputHandles()
{
 hStdin = GetStdHandle(STD_INPUT_HANDLE);
 hStdout = GetStdHandle(STD_OUTPUT_HANDLE);

}
