
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ paddr_t ;


 int GetPhysByte (scalar_t__) ;
 scalar_t__ IER ;
 int SetPhysByte (scalar_t__,int) ;
 scalar_t__ serport ;

void IntEnable()
{
    SetPhysByte((paddr_t)serport+IER, GetPhysByte((paddr_t)serport+IER) | 1);
}
