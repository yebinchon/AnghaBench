
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 float const MAX_GAMMA ;
 float const MIN_GAMMA ;

__attribute__((used)) static int
gamma_is_valid(const float gamma[3])
{
 return !(gamma[0] < MIN_GAMMA ||
   gamma[0] > MAX_GAMMA ||
   gamma[1] < MIN_GAMMA ||
   gamma[1] > MAX_GAMMA ||
   gamma[2] < MIN_GAMMA ||
   gamma[2] > MAX_GAMMA);
}
