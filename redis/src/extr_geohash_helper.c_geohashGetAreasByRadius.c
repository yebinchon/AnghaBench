
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_10__ {double max; double min; } ;
struct TYPE_9__ {double max; double min; } ;
struct TYPE_13__ {TYPE_2__ longitude; TYPE_1__ latitude; } ;
struct TYPE_12__ {int north_east; int south_east; int east; int north_west; int south_west; int west; int north; int south; } ;
struct TYPE_11__ {TYPE_5__ area; TYPE_4__ neighbors; int hash; } ;
typedef int GeoHashRange ;
typedef TYPE_3__ GeoHashRadius ;
typedef TYPE_4__ GeoHashNeighbors ;
typedef int GeoHashBits ;
typedef TYPE_5__ GeoHashArea ;


 int GZERO (int ) ;
 int geohashBoundingBox (double,double,double,double*) ;
 int geohashDecode (int ,int ,int ,TYPE_5__*) ;
 int geohashEncode (int *,int *,double,double,int,int *) ;
 int geohashEstimateStepsByRadius (double,double) ;
 int geohashGetCoordRange (int *,int *) ;
 double geohashGetDistance (double,double,double,double) ;
 int geohashNeighbors (int *,TYPE_4__*) ;

GeoHashRadius geohashGetAreasByRadius(double longitude, double latitude, double radius_meters) {
    GeoHashRange long_range, lat_range;
    GeoHashRadius radius;
    GeoHashBits hash;
    GeoHashNeighbors neighbors;
    GeoHashArea area;
    double min_lon, max_lon, min_lat, max_lat;
    double bounds[4];
    int steps;

    geohashBoundingBox(longitude, latitude, radius_meters, bounds);
    min_lon = bounds[0];
    min_lat = bounds[1];
    max_lon = bounds[2];
    max_lat = bounds[3];

    steps = geohashEstimateStepsByRadius(radius_meters,latitude);

    geohashGetCoordRange(&long_range,&lat_range);
    geohashEncode(&long_range,&lat_range,longitude,latitude,steps,&hash);
    geohashNeighbors(&hash,&neighbors);
    geohashDecode(long_range,lat_range,hash,&area);






    int decrease_step = 0;
    {
        GeoHashArea north, south, east, west;

        geohashDecode(long_range, lat_range, neighbors.north, &north);
        geohashDecode(long_range, lat_range, neighbors.south, &south);
        geohashDecode(long_range, lat_range, neighbors.east, &east);
        geohashDecode(long_range, lat_range, neighbors.west, &west);

        if (geohashGetDistance(longitude,latitude,longitude,north.latitude.max)
            < radius_meters) decrease_step = 1;
        if (geohashGetDistance(longitude,latitude,longitude,south.latitude.min)
            < radius_meters) decrease_step = 1;
        if (geohashGetDistance(longitude,latitude,east.longitude.max,latitude)
            < radius_meters) decrease_step = 1;
        if (geohashGetDistance(longitude,latitude,west.longitude.min,latitude)
            < radius_meters) decrease_step = 1;
    }

    if (steps > 1 && decrease_step) {
        steps--;
        geohashEncode(&long_range,&lat_range,longitude,latitude,steps,&hash);
        geohashNeighbors(&hash,&neighbors);
        geohashDecode(long_range,lat_range,hash,&area);
    }


    if (steps >= 2) {
        if (area.latitude.min < min_lat) {
            GZERO(neighbors.south);
            GZERO(neighbors.south_west);
            GZERO(neighbors.south_east);
        }
        if (area.latitude.max > max_lat) {
            GZERO(neighbors.north);
            GZERO(neighbors.north_east);
            GZERO(neighbors.north_west);
        }
        if (area.longitude.min < min_lon) {
            GZERO(neighbors.west);
            GZERO(neighbors.south_west);
            GZERO(neighbors.north_west);
        }
        if (area.longitude.max > max_lon) {
            GZERO(neighbors.east);
            GZERO(neighbors.south_east);
            GZERO(neighbors.north_east);
        }
    }
    radius.hash = hash;
    radius.neighbors = neighbors;
    radius.area = area;
    return radius;
}
