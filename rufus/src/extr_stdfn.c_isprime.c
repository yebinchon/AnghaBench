
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;



__attribute__((used)) static uint32_t isprime(uint32_t number)
{

 uint32_t divider = 3;

 while((divider * divider < number) && (number % divider != 0))
  divider += 2;

 return (number % divider != 0);
}
