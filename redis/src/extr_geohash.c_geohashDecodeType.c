
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int member_0; } ;
typedef TYPE_1__ GeoHashRange ;
typedef int GeoHashBits ;
typedef int GeoHashArea ;


 int geohashDecode (TYPE_1__,TYPE_1__,int const,int *) ;
 int geohashGetCoordRange (TYPE_1__*,TYPE_1__*) ;

int geohashDecodeType(const GeoHashBits hash, GeoHashArea *area) {
    GeoHashRange r[2] = {{0}};
    geohashGetCoordRange(&r[0], &r[1]);
    return geohashDecode(r[0], r[1], hash, area);
}
