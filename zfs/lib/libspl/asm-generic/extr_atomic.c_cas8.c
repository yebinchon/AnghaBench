
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int atomic_cas_8 (int *,int ,int ) ;

uint8_t
cas8(uint8_t *target, uint8_t arg1, uint8_t arg2)
{
 return (atomic_cas_8(target, arg1, arg2));
}
