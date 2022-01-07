
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_3__ {int reg; } ;


 int assert (int) ;
 unsigned int nitems (TYPE_1__*) ;
 TYPE_1__* pirqs ;

uint8_t
pirq_read(int pin)
{
 assert((pin > 0) && (((unsigned) pin) <= nitems(pirqs)));
 return (pirqs[pin - 1].reg);
}
