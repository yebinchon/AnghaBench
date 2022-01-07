
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int min; int max; } ;
typedef TYPE_1__ GeoHashRange ;


 int GEO_LAT_MAX ;
 int GEO_LAT_MIN ;
 int GEO_LONG_MAX ;
 int GEO_LONG_MIN ;

void geohashGetCoordRange(GeoHashRange *long_range, GeoHashRange *lat_range) {


    long_range->max = GEO_LONG_MAX;
    long_range->min = GEO_LONG_MIN;
    lat_range->max = GEO_LAT_MAX;
    lat_range->min = GEO_LAT_MIN;
}
