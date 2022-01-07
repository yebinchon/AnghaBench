
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
struct fps_counter {scalar_t__ next_timestamp; scalar_t__ nr_skipped; scalar_t__ nr_rendered; } ;


 scalar_t__ FPS_COUNTER_INTERVAL_MS ;
 int display_fps (struct fps_counter*) ;

__attribute__((used)) static void
check_interval_expired(struct fps_counter *counter, uint32_t now) {
    if (now < counter->next_timestamp) {
        return;
    }

    display_fps(counter);
    counter->nr_rendered = 0;
    counter->nr_skipped = 0;

    uint32_t elapsed_slices =
        (now - counter->next_timestamp) / FPS_COUNTER_INTERVAL_MS + 1;
    counter->next_timestamp += FPS_COUNTER_INTERVAL_MS * elapsed_slices;
}
