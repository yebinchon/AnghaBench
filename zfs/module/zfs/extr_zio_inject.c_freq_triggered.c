
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int boolean_t ;


 int B_TRUE ;
 int ZI_PERCENTAGE_MAX ;
 int spa_get_random (int) ;

__attribute__((used)) static boolean_t
freq_triggered(uint32_t frequency)
{



 if (frequency == 0)
  return (B_TRUE);




 uint32_t maximum = (frequency <= 100) ? 100 : ZI_PERCENTAGE_MAX;

 return (spa_get_random(maximum) < frequency);
}
