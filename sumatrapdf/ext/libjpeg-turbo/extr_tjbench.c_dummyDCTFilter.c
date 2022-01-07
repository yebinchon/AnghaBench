
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int tjtransform ;
struct TYPE_4__ {int w; int h; } ;
typedef TYPE_1__ tjregion ;



int dummyDCTFilter(short *coeffs, tjregion arrayRegion, tjregion planeRegion,
 int componentIndex, int transformIndex, tjtransform *transform)
{
 int i;
 for(i=0; i<arrayRegion.w*arrayRegion.h; i++) coeffs[i]=-coeffs[i];
 return 0;
}
