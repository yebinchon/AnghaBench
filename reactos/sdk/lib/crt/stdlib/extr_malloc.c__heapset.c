
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int _heapchk () ;

int _heapset(unsigned int unFill)
{
 if (_heapchk() == -1)
  return -1;
 return 0;

}
