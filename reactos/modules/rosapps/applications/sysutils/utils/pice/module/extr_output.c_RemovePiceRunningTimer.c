
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int KeCancelTimer (int *) ;
 int PiceTimer ;

void RemovePiceRunningTimer(void)
{
 KeCancelTimer( &PiceTimer );
}
