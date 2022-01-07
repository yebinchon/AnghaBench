
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ code; int name; } ;
typedef TYPE_1__ sd_bus_error_map ;


 scalar_t__ BUS_ERROR_MAP_END_MARKER ;

__attribute__((used)) static bool map_ok(const sd_bus_error_map *map) {
        for (; map->code != BUS_ERROR_MAP_END_MARKER; map++)
                if (!map->name || map->code <=0)
                        return 0;
        return 1;
}
