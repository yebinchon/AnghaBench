
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int cx; int cMaxImage; int cy; } ;
struct TYPE_6__ {int cx; int cy; } ;
typedef TYPE_1__ SIZE ;
typedef TYPE_2__ ILHEAD ;


 scalar_t__ is_v6_header (TYPE_2__ const*) ;

__attribute__((used)) static inline void imagelist_get_bitmap_size(const ILHEAD *header, SIZE *sz)
{
    const int tile_count = 4;

    if (is_v6_header(header))
    {
        sz->cx = header->cx;
        sz->cy = header->cMaxImage * header->cy;
    }
    else
    {
        sz->cx = header->cx * tile_count;
        sz->cy = ((header->cMaxImage + tile_count - 1) / tile_count) * header->cy;
    }
}
