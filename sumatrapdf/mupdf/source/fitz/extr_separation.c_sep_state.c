
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int* state; } ;
typedef TYPE_1__ fz_separations ;
typedef int fz_separation_behavior ;



__attribute__((used)) static inline fz_separation_behavior
sep_state(const fz_separations *sep, int i)
{
 return (fz_separation_behavior)((sep->state[i>>5]>>((2*i) & 31)) & 3);
}
