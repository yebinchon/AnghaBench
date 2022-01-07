
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ _getpid () ;
 scalar_t__ getpid () ;

__attribute__((used)) static int getProcessId(void){



  return (int)getpid();

}
