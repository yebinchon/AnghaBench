
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int GeoHashRadius ;


 int geohashGetAreasByRadius (double,double,double) ;

GeoHashRadius geohashGetAreasByRadiusWGS84(double longitude, double latitude,
                                           double radius_meters) {
    return geohashGetAreasByRadius(longitude, latitude, radius_meters);
}
