
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mp_int ;
typedef int mp_digit ;


 int mp_div_d (int const*,int ,int *,int *) ;

__attribute__((used)) static int
mp_mod_d (const mp_int * a, mp_digit b, mp_digit * c)
{
  return mp_div_d(a, b, ((void*)0), c);
}
