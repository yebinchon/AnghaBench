
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mp_digit ;
typedef int BOOL ;


 int DIGIT_BIT ;
 int FALSE ;
 int TRUE ;

__attribute__((used)) static BOOL s_is_power_of_two(mp_digit b, int *p)
{
   int x;

   for (x = 1; x < DIGIT_BIT; x++) {
      if (b == (((mp_digit)1)<<x)) {
         *p = x;
         return TRUE;
      }
   }
   return FALSE;
}
