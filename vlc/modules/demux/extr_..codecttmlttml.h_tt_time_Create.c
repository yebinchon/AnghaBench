
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int vlc_tick_t ;
struct TYPE_3__ {scalar_t__ frames; int base; } ;
typedef TYPE_1__ tt_time_t ;



__attribute__((used)) static inline tt_time_t tt_time_Create( vlc_tick_t i )
{
    tt_time_t t;
    t.base = i;
    t.frames = 0;
    return t;
}
