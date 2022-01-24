#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  file_handler_action_t ;
typedef  enum event_result { ____Placeholder_event_result } event_result ;
struct TYPE_12__ {int has_frame; } ;
struct TYPE_10__ {int /*<<< orphan*/  file; } ;
struct TYPE_9__ {int /*<<< orphan*/  event; } ;
struct TYPE_11__ {int type; TYPE_2__ drop; int /*<<< orphan*/  button; int /*<<< orphan*/  wheel; int /*<<< orphan*/  motion; int /*<<< orphan*/  key; int /*<<< orphan*/  text; TYPE_1__ window; } ;
typedef  TYPE_3__ SDL_Event ;

/* Variables and functions */
 int /*<<< orphan*/  ACTION_INSTALL_APK ; 
 int /*<<< orphan*/  ACTION_PUSH_FILE ; 
#define  EVENT_NEW_FRAME 141 
 int EVENT_RESULT_CONTINUE ; 
 int EVENT_RESULT_STOPPED_BY_EOS ; 
 int EVENT_RESULT_STOPPED_BY_USER ; 
#define  EVENT_STREAM_STOPPED 140 
 int /*<<< orphan*/  FUNC0 (char*) ; 
#define  SDL_DROPFILE 139 
#define  SDL_KEYDOWN 138 
#define  SDL_KEYUP 137 
#define  SDL_MOUSEBUTTONDOWN 136 
#define  SDL_MOUSEBUTTONUP 135 
#define  SDL_MOUSEMOTION 134 
#define  SDL_MOUSEWHEEL 133 
#define  SDL_QUIT 132 
#define  SDL_TEXTINPUT 131 
#define  SDL_WINDOWEVENT 130 
#define  SDL_WINDOWEVENT_EXPOSED 129 
#define  SDL_WINDOWEVENT_SIZE_CHANGED 128 
 int /*<<< orphan*/  file_handler ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  input_manager ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 TYPE_4__ screen ; 
 int /*<<< orphan*/  FUNC8 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_4__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  video_buffer ; 

__attribute__((used)) static enum event_result
FUNC11(SDL_Event *event, bool control) {
    switch (event->type) {
        case EVENT_STREAM_STOPPED:
            FUNC0("Video stream stopped");
            return EVENT_RESULT_STOPPED_BY_EOS;
        case SDL_QUIT:
            FUNC0("User requested to quit");
            return EVENT_RESULT_STOPPED_BY_USER;
        case EVENT_NEW_FRAME:
            if (!screen.has_frame) {
                screen.has_frame = true;
                // this is the very first frame, show the window
                FUNC9(&screen);
            }
            if (!FUNC10(&screen, &video_buffer)) {
                return EVENT_RESULT_CONTINUE;
            }
            break;
        case SDL_WINDOWEVENT:
            switch (event->window.event) {
                case SDL_WINDOWEVENT_EXPOSED:
                case SDL_WINDOWEVENT_SIZE_CHANGED:
                    FUNC8(&screen);
                    break;
            }
            break;
        case SDL_TEXTINPUT:
            if (!control) {
                break;
            }
            FUNC6(&input_manager, &event->text);
            break;
        case SDL_KEYDOWN:
        case SDL_KEYUP:
            // some key events do not interact with the device, so process the
            // event even if control is disabled
            FUNC2(&input_manager, &event->key, control);
            break;
        case SDL_MOUSEMOTION:
            if (!control) {
                break;
            }
            FUNC4(&input_manager, &event->motion);
            break;
        case SDL_MOUSEWHEEL:
            if (!control) {
                break;
            }
            FUNC5(&input_manager, &event->wheel);
            break;
        case SDL_MOUSEBUTTONDOWN:
        case SDL_MOUSEBUTTONUP:
            // some mouse events do not interact with the device, so process
            // the event even if control is disabled
            FUNC3(&input_manager, &event->button,
                                               control);
            break;
        case SDL_DROPFILE: {
            if (!control) {
                break;
            }
            file_handler_action_t action;
            if (FUNC7(event->drop.file)) {
                action = ACTION_INSTALL_APK;
            } else {
                action = ACTION_PUSH_FILE;
            }
            FUNC1(&file_handler, action, event->drop.file);
            break;
        }
    }
    return EVENT_RESULT_CONTINUE;
}