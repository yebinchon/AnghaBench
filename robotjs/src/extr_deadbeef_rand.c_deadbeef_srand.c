
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int deadbeef_beef ;
 int deadbeef_seed ;

void deadbeef_srand(uint32_t x)
{
 deadbeef_seed = x;
 deadbeef_beef = 0xdeadbeef;
}
