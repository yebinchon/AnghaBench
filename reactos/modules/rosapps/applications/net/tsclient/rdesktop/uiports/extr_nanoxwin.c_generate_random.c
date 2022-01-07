
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8 ;


 int memcpy (int *,char*,int) ;

void generate_random(uint8 * random)
{
  memcpy(random, "12345678901234567890123456789012", 32);
}
