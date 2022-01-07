
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ INVALID_HANDLE_VALUE ;
 int PICE_IOCTL_BREAK ;
 int close_debugger () ;
 int debugger_file ;
 int ioctl (int ,int ,int *) ;
 scalar_t__ open_debugger () ;

void dobreak(void)
{
    int iRetVal;

 if(open_debugger() != INVALID_HANDLE_VALUE)
 {
  iRetVal = ioctl(debugger_file,PICE_IOCTL_BREAK,((void*)0));
  close_debugger();
 }
}
