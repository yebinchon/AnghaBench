
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int rc; float coeff; float rate; int output_dejitter; int abort; int coeff_avg; int input_dejitter; void* pause_date; void* last; void* wait_sync_ref; int wait_sync_ref_priority; void* first_pcr; scalar_t__ delay; void* offset; int * master; int cond; int lock; } ;
typedef TYPE_1__ vlc_clock_main_t ;


 int AOUT_MAX_PTS_ADVANCE ;
 int AvgInit (int *,int) ;
 int DEFAULT_PTS_DELAY ;
 int UINT_MAX ;
 void* VLC_TICK_INVALID ;
 void* clock_point_Create (void*,void*) ;
 TYPE_1__* malloc (int) ;
 int vlc_cond_init (int *) ;
 int vlc_mutex_init (int *) ;

vlc_clock_main_t *vlc_clock_main_New(void)
{
    vlc_clock_main_t *main_clock = malloc(sizeof(vlc_clock_main_t));

    if (main_clock == ((void*)0))
        return ((void*)0);

    vlc_mutex_init(&main_clock->lock);
    vlc_cond_init(&main_clock->cond);
    main_clock->master = ((void*)0);
    main_clock->rc = 1;

    main_clock->coeff = 1.0f;
    main_clock->rate = 1.0f;
    main_clock->offset = VLC_TICK_INVALID;
    main_clock->delay = 0;

    main_clock->first_pcr =
        clock_point_Create(VLC_TICK_INVALID, VLC_TICK_INVALID);
    main_clock->wait_sync_ref_priority = UINT_MAX;
    main_clock->wait_sync_ref = main_clock->last =
        clock_point_Create(VLC_TICK_INVALID, VLC_TICK_INVALID);

    main_clock->pause_date = VLC_TICK_INVALID;
    main_clock->input_dejitter = DEFAULT_PTS_DELAY;
    main_clock->output_dejitter = AOUT_MAX_PTS_ADVANCE * 2;
    main_clock->abort = 0;

    AvgInit(&main_clock->coeff_avg, 10);

    return main_clock;
}
