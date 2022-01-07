
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fps_counter {int dummy; } ;


 int LOGE (char*) ;
 int LOGI (char*) ;
 scalar_t__ fps_counter_is_started (struct fps_counter*) ;
 scalar_t__ fps_counter_start (struct fps_counter*) ;
 int fps_counter_stop (struct fps_counter*) ;

__attribute__((used)) static void
switch_fps_counter_state(struct fps_counter *fps_counter) {


    if (fps_counter_is_started(fps_counter)) {
        fps_counter_stop(fps_counter);
        LOGI("FPS counter stopped");
    } else {
        if (fps_counter_start(fps_counter)) {
            LOGI("FPS counter started");
        } else {
            LOGE("FPS counter starting failed");
        }
    }
}
