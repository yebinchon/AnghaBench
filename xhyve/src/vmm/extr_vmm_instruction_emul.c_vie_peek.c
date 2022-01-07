
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct vie {size_t num_processed; size_t num_valid; int * inst; } ;



__attribute__((used)) static int
vie_peek(struct vie *vie, uint8_t *x)
{

 if (vie->num_processed < vie->num_valid) {
  *x = vie->inst[vie->num_processed];
  return (0);
 } else
  return (-1);
}
