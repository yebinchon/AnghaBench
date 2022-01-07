
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int boolean_t ;


 int B_FALSE ;
 int B_TRUE ;

__attribute__((used)) static inline boolean_t
overflow_multiply(uint64_t a, uint64_t b, uint64_t *c)
{
 uint64_t temp = a * b;
 if (b != 0 && temp / b != a)
  return (B_FALSE);
 *c = temp;
 return (B_TRUE);
}
