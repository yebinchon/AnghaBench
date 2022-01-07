
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct input_manager {int controller; } ;
struct TYPE_4__ {int text; } ;
struct control_msg {TYPE_1__ inject_text; int type; } ;
struct TYPE_5__ {char* text; } ;
typedef TYPE_2__ SDL_TextInputEvent ;


 int CONTROL_MSG_TYPE_INJECT_TEXT ;
 int LOGW (char*) ;
 int SDL_assert (int) ;
 int SDL_free (int ) ;
 int SDL_strdup (char*) ;
 int controller_push_msg (int ,struct control_msg*) ;
 scalar_t__ isalpha (char) ;

void
input_manager_process_text_input(struct input_manager *input_manager,
                                 const SDL_TextInputEvent *event) {
    char c = event->text[0];
    if (isalpha(c) || c == ' ') {
        SDL_assert(event->text[1] == '\0');

        return;
    }
    struct control_msg msg;
    msg.type = CONTROL_MSG_TYPE_INJECT_TEXT;
    msg.inject_text.text = SDL_strdup(event->text);
    if (!msg.inject_text.text) {
        LOGW("Could not strdup input text");
        return;
    }
    if (!controller_push_msg(input_manager->controller, &msg)) {
        SDL_free(msg.inject_text.text);
        LOGW("Could not request 'inject text'");
    }
}
