
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ fz_bidi_level ;


 scalar_t__ odd (scalar_t__) ;

__attribute__((used)) static fz_bidi_level greater_even(fz_bidi_level i)
{
 return odd(i) ? i + 1 : i + 2;
}
