
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int nVertex; } ;
typedef TYPE_1__ GeoPoly ;


 double GeoX (TYPE_1__*,int) ;
 double GeoY (TYPE_1__*,int) ;

__attribute__((used)) static double geopolyArea(GeoPoly *p){
  double rArea = 0.0;
  int ii;
  for(ii=0; ii<p->nVertex-1; ii++){
    rArea += (GeoX(p,ii) - GeoX(p,ii+1))
              * (GeoY(p,ii) + GeoY(p,ii+1))
              * 0.5;
  }
  rArea += (GeoX(p,ii) - GeoX(p,0))
           * (GeoY(p,ii) + GeoY(p,0))
           * 0.5;
  return rArea;
}
