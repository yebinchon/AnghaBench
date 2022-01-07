
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct file_handler {int stopped; scalar_t__ current_process; int mutex; int event_cond; } ;


 int LOGW (char*) ;
 scalar_t__ PROCESS_NONE ;
 int cmd_simple_wait (scalar_t__,int *) ;
 int cmd_terminate (scalar_t__) ;
 int cond_signal (int ) ;
 int mutex_lock (int ) ;
 int mutex_unlock (int ) ;

void
file_handler_stop(struct file_handler *file_handler) {
    mutex_lock(file_handler->mutex);
    file_handler->stopped = 1;
    cond_signal(file_handler->event_cond);
    if (file_handler->current_process != PROCESS_NONE) {
        if (!cmd_terminate(file_handler->current_process)) {
            LOGW("Could not terminate install process");
        }
        cmd_simple_wait(file_handler->current_process, ((void*)0));
        file_handler->current_process = PROCESS_NONE;
    }
    mutex_unlock(file_handler->mutex);
}
