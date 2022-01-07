
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {float coeff; float rate; int cond; int last; int wait_sync_ref; int wait_sync_ref_priority; int offset; int coeff_avg; } ;
typedef TYPE_1__ vlc_clock_main_t ;


 int AvgReset (int *) ;
 int UINT_MAX ;
 int VLC_TICK_INVALID ;
 int clock_point_Create (int ,int ) ;
 int vlc_cond_broadcast (int *) ;

__attribute__((used)) static void vlc_clock_main_reset(vlc_clock_main_t *main_clock)
{
    AvgReset(&main_clock->coeff_avg);
    main_clock->coeff = 1.0f;
    main_clock->rate = 1.0f;
    main_clock->offset = VLC_TICK_INVALID;

    main_clock->wait_sync_ref_priority = UINT_MAX;
    main_clock->wait_sync_ref =
        main_clock->last = clock_point_Create(VLC_TICK_INVALID, VLC_TICK_INVALID);
    vlc_cond_broadcast(&main_clock->cond);
}
