
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned long GetLogicalDrives () ;

unsigned long _getdrives(void)
{
   return GetLogicalDrives();
}
