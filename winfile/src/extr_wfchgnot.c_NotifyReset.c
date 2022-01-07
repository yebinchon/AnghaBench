
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int VOID ;
typedef int UINT ;


 int NotifyPause (int,int ) ;
 scalar_t__ nHandles ;

VOID
NotifyReset()
{
   NotifyPause(-1, (UINT)-2);
   nHandles = 0;
}
