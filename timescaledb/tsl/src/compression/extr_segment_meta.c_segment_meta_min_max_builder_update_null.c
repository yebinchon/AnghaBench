
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int has_null; } ;
typedef TYPE_1__ SegmentMetaMinMaxBuilder ;



void
segment_meta_min_max_builder_update_null(SegmentMetaMinMaxBuilder *builder)
{
 builder->has_null = 1;
}
