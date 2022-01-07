
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ vlc_tick_t ;
struct TYPE_2__ {scalar_t__ i_start; } ;
typedef TYPE_1__ subtitle_t ;



__attribute__((used)) static int subtitle_cmp( const void *first, const void *second )
{
    vlc_tick_t result = ((subtitle_t *)(first))->i_start - ((subtitle_t *)(second))->i_start;


    return result == 0 ? 0 : result > 0 ? 1 : -1;
}
