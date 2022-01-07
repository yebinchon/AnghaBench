
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ paddr_t ;


 scalar_t__ BAUDHIGH ;
 scalar_t__ BAUDLOW ;
 scalar_t__ LCR ;
 int SetPhysByte (scalar_t__,int) ;
 int sync () ;

void setup(char *serport, int baud) {
 int x = 115200 / baud;
 SetPhysByte((paddr_t)serport+LCR, 128);
 sync();
 SetPhysByte((paddr_t)serport+BAUDLOW, x & 255);
 sync();
 SetPhysByte((paddr_t)serport+BAUDHIGH, x >> 8);
 sync();
 SetPhysByte((paddr_t)serport+LCR, 3);
 sync();
}
