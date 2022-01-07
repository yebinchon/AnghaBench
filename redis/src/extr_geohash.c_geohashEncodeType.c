
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_6__ {int member_0; } ;
typedef TYPE_1__ GeoHashRange ;
typedef int GeoHashBits ;


 int geohashEncode (TYPE_1__*,TYPE_1__*,double,double,int ,int *) ;
 int geohashGetCoordRange (TYPE_1__*,TYPE_1__*) ;

int geohashEncodeType(double longitude, double latitude, uint8_t step, GeoHashBits *hash) {
    GeoHashRange r[2] = {{0}};
    geohashGetCoordRange(&r[0], &r[1]);
    return geohashEncode(&r[0], &r[1], longitude, latitude, step, hash);
}
