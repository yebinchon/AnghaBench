
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {long (* theRead ) (int ,char*,long) ;} ;


 TYPE_1__ __msl_os_x ;
 long read (int ,char*,long) ;
 long stub1 (int ,char*,long) ;

long ReadCharsFromConsole(char *buffer, long n)
{




  if (__msl_os_x.theRead == ((void*)0))
    return -1;
  else
    return __msl_os_x.theRead(0, buffer, n);

}
