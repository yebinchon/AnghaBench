
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int member_0; } ;
struct TYPE_6__ {TYPE_1__ member_0; } ;
typedef int GeoHashBits ;
typedef TYPE_2__ GeoHashArea ;


 int geohashDecodeAreaToLongLat (TYPE_2__*,double*) ;
 int geohashDecodeType (int const,TYPE_2__*) ;

int geohashDecodeToLongLatType(const GeoHashBits hash, double *xy) {
    GeoHashArea area = {{0}};
    if (!xy || !geohashDecodeType(hash, &area))
        return 0;
    return geohashDecodeAreaToLongLat(&area, xy);
}
