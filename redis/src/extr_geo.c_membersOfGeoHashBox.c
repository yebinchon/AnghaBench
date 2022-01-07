
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int robj ;
typedef int geoArray ;
typedef int GeoHashFix52Bits ;
typedef int GeoHashBits ;


 int geoGetPointsInRange (int *,int ,int ,double,double,double,int *) ;
 int scoresOfGeoHashBox (int ,int *,int *) ;

int membersOfGeoHashBox(robj *zobj, GeoHashBits hash, geoArray *ga, double lon, double lat, double radius) {
    GeoHashFix52Bits min, max;

    scoresOfGeoHashBox(hash,&min,&max);
    return geoGetPointsInRange(zobj, min, max, lon, lat, radius, ga);
}
