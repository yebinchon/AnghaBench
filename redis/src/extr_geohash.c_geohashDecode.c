
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_5__ ;
typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef unsigned long long uint8_t ;
typedef int uint64_t ;
typedef double uint32_t ;
struct TYPE_13__ {double min; double max; } ;
struct TYPE_12__ {double min; double max; } ;
struct TYPE_15__ {unsigned long long step; int bits; } ;
struct TYPE_16__ {TYPE_2__ longitude; TYPE_1__ latitude; TYPE_4__ hash; } ;
struct TYPE_14__ {double max; double min; } ;
typedef TYPE_3__ GeoHashRange ;
typedef TYPE_4__ GeoHashBits ;
typedef TYPE_5__ GeoHashArea ;


 scalar_t__ HASHISZERO (TYPE_4__ const) ;
 scalar_t__ RANGEISZERO (TYPE_3__ const) ;
 int deinterleave64 (int ) ;

int geohashDecode(const GeoHashRange long_range, const GeoHashRange lat_range,
                   const GeoHashBits hash, GeoHashArea *area) {
    if (HASHISZERO(hash) || ((void*)0) == area || RANGEISZERO(lat_range) ||
        RANGEISZERO(long_range)) {
        return 0;
    }

    area->hash = hash;
    uint8_t step = hash.step;
    uint64_t hash_sep = deinterleave64(hash.bits);

    double lat_scale = lat_range.max - lat_range.min;
    double long_scale = long_range.max - long_range.min;

    uint32_t ilato = hash_sep;
    uint32_t ilono = hash_sep >> 32;




    area->latitude.min =
        lat_range.min + (ilato * 1.0 / (1ull << step)) * lat_scale;
    area->latitude.max =
        lat_range.min + ((ilato + 1) * 1.0 / (1ull << step)) * lat_scale;
    area->longitude.min =
        long_range.min + (ilono * 1.0 / (1ull << step)) * long_scale;
    area->longitude.max =
        long_range.min + ((ilono + 1) * 1.0 / (1ull << step)) * long_scale;

    return 1;
}
