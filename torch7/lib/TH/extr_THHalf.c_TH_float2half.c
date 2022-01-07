
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int x; } ;
typedef TYPE_1__ THHalf ;


 int TH_float2halfbits (float*,int *) ;

THHalf TH_float2half(float f)
{
  THHalf h;
  TH_float2halfbits(&f, &h.x);
  return h;
}
