
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ TableDataType ;
struct TYPE_4__ {scalar_t__ type; size_t minimum_width; size_t maximum_width; unsigned int weight; unsigned int align_percent; unsigned int ellipsize_percent; void const* data; scalar_t__ uppercase; scalar_t__ url; scalar_t__ color; } ;
typedef TYPE_1__ TableData ;


 int assert (TYPE_1__*) ;
 scalar_t__ memcmp_safe (void const*,void const*,size_t) ;
 size_t table_data_size (scalar_t__,void const*) ;

__attribute__((used)) static bool table_data_matches(
                TableData *d,
                TableDataType type,
                const void *data,
                size_t minimum_width,
                size_t maximum_width,
                unsigned weight,
                unsigned align_percent,
                unsigned ellipsize_percent) {

        size_t k, l;
        assert(d);

        if (d->type != type)
                return 0;

        if (d->minimum_width != minimum_width)
                return 0;

        if (d->maximum_width != maximum_width)
                return 0;

        if (d->weight != weight)
                return 0;

        if (d->align_percent != align_percent)
                return 0;

        if (d->ellipsize_percent != ellipsize_percent)
                return 0;


        if (d->color)
                return 0;
        if (d->url)
                return 0;
        if (d->uppercase)
                return 0;

        k = table_data_size(type, data);
        l = table_data_size(d->type, d->data);

        if (k != l)
                return 0;

        return memcmp_safe(data, d->data, l) == 0;
}
