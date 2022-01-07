
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int file_handler_action_t ;
typedef enum event_result { ____Placeholder_event_result } event_result ;
struct TYPE_12__ {int has_frame; } ;
struct TYPE_10__ {int file; } ;
struct TYPE_9__ {int event; } ;
struct TYPE_11__ {int type; TYPE_2__ drop; int button; int wheel; int motion; int key; int text; TYPE_1__ window; } ;
typedef TYPE_3__ SDL_Event ;


 int ACTION_INSTALL_APK ;
 int ACTION_PUSH_FILE ;

 int EVENT_RESULT_CONTINUE ;
 int EVENT_RESULT_STOPPED_BY_EOS ;
 int EVENT_RESULT_STOPPED_BY_USER ;

 int LOGD (char*) ;
 int file_handler ;
 int file_handler_request (int *,int ,int ) ;
 int input_manager ;
 int input_manager_process_key (int *,int *,int) ;
 int input_manager_process_mouse_button (int *,int *,int) ;
 int input_manager_process_mouse_motion (int *,int *) ;
 int input_manager_process_mouse_wheel (int *,int *) ;
 int input_manager_process_text_input (int *,int *) ;
 int is_apk (int ) ;
 TYPE_4__ screen ;
 int screen_render (TYPE_4__*) ;
 int screen_show_window (TYPE_4__*) ;
 int screen_update_frame (TYPE_4__*,int *) ;
 int video_buffer ;

__attribute__((used)) static enum event_result
handle_event(SDL_Event *event, bool control) {
    switch (event->type) {
        case 140:
            LOGD("Video stream stopped");
            return EVENT_RESULT_STOPPED_BY_EOS;
        case 132:
            LOGD("User requested to quit");
            return EVENT_RESULT_STOPPED_BY_USER;
        case 141:
            if (!screen.has_frame) {
                screen.has_frame = 1;

                screen_show_window(&screen);
            }
            if (!screen_update_frame(&screen, &video_buffer)) {
                return EVENT_RESULT_CONTINUE;
            }
            break;
        case 130:
            switch (event->window.event) {
                case 129:
                case 128:
                    screen_render(&screen);
                    break;
            }
            break;
        case 131:
            if (!control) {
                break;
            }
            input_manager_process_text_input(&input_manager, &event->text);
            break;
        case 138:
        case 137:


            input_manager_process_key(&input_manager, &event->key, control);
            break;
        case 134:
            if (!control) {
                break;
            }
            input_manager_process_mouse_motion(&input_manager, &event->motion);
            break;
        case 133:
            if (!control) {
                break;
            }
            input_manager_process_mouse_wheel(&input_manager, &event->wheel);
            break;
        case 136:
        case 135:


            input_manager_process_mouse_button(&input_manager, &event->button,
                                               control);
            break;
        case 139: {
            if (!control) {
                break;
            }
            file_handler_action_t action;
            if (is_apk(event->drop.file)) {
                action = ACTION_INSTALL_APK;
            } else {
                action = ACTION_PUSH_FILE;
            }
            file_handler_request(&file_handler, action, event->drop.file);
            break;
        }
    }
    return EVENT_RESULT_CONTINUE;
}
