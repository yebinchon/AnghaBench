
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GetCurrentThread () ;

uintptr_t __threadhandle()
{
   return (uintptr_t)GetCurrentThread();
}
