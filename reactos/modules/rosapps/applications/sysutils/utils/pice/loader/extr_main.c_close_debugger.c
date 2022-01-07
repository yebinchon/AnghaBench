
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CloseHandle (int ) ;
 int GetLastError () ;
 int debugger_file ;
 int printf (char*,int ) ;

void close_debugger(void)
{
 if( !CloseHandle(debugger_file) ){
  printf("Error closing debugger handle: %ld\n", GetLastError());
 }
}
