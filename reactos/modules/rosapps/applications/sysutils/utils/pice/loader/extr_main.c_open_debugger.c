
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ HANDLE ;


 scalar_t__ CreateFile (char*,int ,int ,int *,int ,int *,int *) ;
 int GENERIC_READ ;
 int GetLastError () ;
 scalar_t__ INVALID_HANDLE_VALUE ;
 int OPEN_EXISTING ;
 scalar_t__ debugger_file ;
 int printf (char*,int ) ;

HANDLE open_debugger(void)
{
    debugger_file = CreateFile("\\Device\\Pice",GENERIC_READ,0,((void*)0),OPEN_EXISTING,((void*)0),((void*)0));
 if(debugger_file == INVALID_HANDLE_VALUE)
 {
  printf("LOADER: debugger is not loaded. Last Error: %ld\n", GetLastError());
 }

 return debugger_file;
}
