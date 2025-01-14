
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fps_counter {int nr_rendered; int nr_skipped; } ;


 int FPS_COUNTER_INTERVAL_MS ;
 int LOGI (char*,unsigned int,...) ;

__attribute__((used)) static void
display_fps(struct fps_counter *counter) {
    unsigned rendered_per_second =
        counter->nr_rendered * 1000 / FPS_COUNTER_INTERVAL_MS;
    if (counter->nr_skipped) {
        LOGI("%u fps (+%u frames skipped)", rendered_per_second,
                                            counter->nr_skipped);
    } else {
        LOGI("%u fps", rendered_per_second);
    }
}
