
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GetCurrentProcessId () ;
 int getpid () ;

__attribute__((used)) static int
prof_getpid(void) {



 return getpid();

}
