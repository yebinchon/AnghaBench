
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_3__ {scalar_t__ offset; } ;
typedef TYPE_1__ ngx_http_tfs_segment_info_t ;
typedef scalar_t__ int64_t ;
typedef int int32_t ;



int32_t
ngx_http_tfs_find_segment(uint32_t seg_count,
    ngx_http_tfs_segment_info_t *seg_info, int64_t offset)
{
    int32_t start, end, middle;

    start = 0;
    end = seg_count - 1;
    middle = (start + end) / 2;
    while (start <= end) {
        if (seg_info[middle].offset == offset) {
            return middle;
        }
        if (seg_info[middle].offset < offset) {
            start = middle + 1;

        } else {
            end = middle - 1;
        }
        middle = (start + end) / 2;
    }
    return -start;
}
