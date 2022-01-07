
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int gOptInd ;
 int gOptPlace ;
 int kGetoptErrMsg ;

void
GetoptReset(void)
{
 gOptInd = 1;
 gOptPlace = kGetoptErrMsg;
}
