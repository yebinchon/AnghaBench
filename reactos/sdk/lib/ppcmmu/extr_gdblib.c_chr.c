
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ paddr_t ;


 int GetPhysByte (scalar_t__) ;
 scalar_t__ LSR ;
 int sync () ;

inline int chr(char *serport)
{
    sync();
    return GetPhysByte((paddr_t)serport+LSR) & 1;
}
