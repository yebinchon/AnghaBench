
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct controller {int dummy; } ;
struct TYPE_2__ {char* text; } ;
struct control_msg {TYPE_1__ inject_text; int type; } ;


 int CONTROL_MSG_TYPE_INJECT_TEXT ;
 int LOGW (char*,...) ;
 char* SDL_GetClipboardText () ;
 int SDL_GetError () ;
 int SDL_free (char*) ;
 int controller_push_msg (struct controller*,struct control_msg*) ;

__attribute__((used)) static void
clipboard_paste(struct controller *controller) {
    char *text = SDL_GetClipboardText();
    if (!text) {
        LOGW("Could not get clipboard text: %s", SDL_GetError());
        return;
    }
    if (!*text) {

        SDL_free(text);
        return;
    }

    struct control_msg msg;
    msg.type = CONTROL_MSG_TYPE_INJECT_TEXT;
    msg.inject_text.text = text;
    if (!controller_push_msg(controller, &msg)) {
        SDL_free(text);
        LOGW("Could not request 'paste clipboard'");
    }
}
