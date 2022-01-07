
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef scalar_t__ int32_t ;
struct TYPE_6__ {scalar_t__ hi; } ;
struct TYPE_7__ {TYPE_1__ u32; } ;
typedef TYPE_2__ cTValue ;


 scalar_t__ intV (TYPE_2__*) ;
 scalar_t__ tvisint (TYPE_2__*) ;

__attribute__((used)) static int rec_for_direction(cTValue *o)
{
  return (tvisint(o) ? intV(o) : (int32_t)o->u32.hi) >= 0;
}
