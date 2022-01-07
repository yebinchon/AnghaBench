
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int sds ;
struct TYPE_3__ {double longitude; double latitude; double dist; double score; int member; } ;
typedef TYPE_1__ geoPoint ;
typedef int geoArray ;


 int C_ERR ;
 int C_OK ;
 int decodeGeohash (double,double*) ;
 TYPE_1__* geoArrayAppend (int *) ;
 int geohashGetDistanceIfInRadiusWGS84 (double,double,double,double,double,double*) ;

int geoAppendIfWithinRadius(geoArray *ga, double lon, double lat, double radius, double score, sds member) {
    double distance, xy[2];

    if (!decodeGeohash(score,xy)) return C_ERR;


    if (!geohashGetDistanceIfInRadiusWGS84(lon,lat, xy[0], xy[1],
                                           radius, &distance))
    {
        return C_ERR;
    }


    geoPoint *gp = geoArrayAppend(ga);
    gp->longitude = xy[0];
    gp->latitude = xy[1];
    gp->dist = distance;
    gp->member = member;
    gp->score = score;
    return C_OK;
}
