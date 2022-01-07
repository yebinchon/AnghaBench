
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct file_handler_request {scalar_t__ action; int file; } ;
struct file_handler {int push_target; int mutex; int current_process; int serial; int queue; scalar_t__ stopped; int event_cond; } ;
typedef int process_t ;


 scalar_t__ ACTION_INSTALL_APK ;
 int LOGE (char*,int ,...) ;
 int LOGI (char*,int ,...) ;
 int PROCESS_NONE ;
 int SDL_assert (int) ;
 scalar_t__ cbuf_is_empty (int *) ;
 int cbuf_take (int *,struct file_handler_request*) ;
 int cond_wait (int ,int ) ;
 int file_handler_request_destroy (struct file_handler_request*) ;
 int install_apk (int ,int ) ;
 int mutex_lock (int ) ;
 int mutex_unlock (int ) ;
 scalar_t__ process_check_success (int ,char*) ;
 int push_file (int ,int ,int ) ;

__attribute__((used)) static int
run_file_handler(void *data) {
    struct file_handler *file_handler = data;

    for (;;) {
        mutex_lock(file_handler->mutex);
        file_handler->current_process = PROCESS_NONE;
        while (!file_handler->stopped && cbuf_is_empty(&file_handler->queue)) {
            cond_wait(file_handler->event_cond, file_handler->mutex);
        }
        if (file_handler->stopped) {

            mutex_unlock(file_handler->mutex);
            break;
        }
        struct file_handler_request req;
        bool non_empty = cbuf_take(&file_handler->queue, &req);
        SDL_assert(non_empty);

        process_t process;
        if (req.action == ACTION_INSTALL_APK) {
            LOGI("Installing %s...", req.file);
            process = install_apk(file_handler->serial, req.file);
        } else {
            LOGI("Pushing %s...", req.file);
            process = push_file(file_handler->serial, req.file,
                                file_handler->push_target);
        }
        file_handler->current_process = process;
        mutex_unlock(file_handler->mutex);

        if (req.action == ACTION_INSTALL_APK) {
            if (process_check_success(process, "adb install")) {
                LOGI("%s successfully installed", req.file);
            } else {
                LOGE("Failed to install %s", req.file);
            }
        } else {
            if (process_check_success(process, "adb push")) {
                LOGI("%s successfully pushed to %s", req.file,
                                                     file_handler->push_target);
            } else {
                LOGE("Failed to push %s to %s", req.file,
                                                file_handler->push_target);
            }
        }

        file_handler_request_destroy(&req);
    }
    return 0;
}
