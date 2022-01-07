
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_10__ {unsigned char mode; } ;
struct TYPE_9__ {int text; } ;
struct TYPE_8__ {int vscroll; int hscroll; int position; } ;
struct TYPE_7__ {unsigned char action; int position; int buttons; } ;
struct TYPE_6__ {unsigned char action; int metastate; int keycode; } ;
struct control_msg {unsigned char type; TYPE_5__ set_screen_power_mode; TYPE_4__ inject_text; TYPE_3__ inject_scroll_event; TYPE_2__ inject_mouse_event; TYPE_1__ inject_keycode; } ;


 int CONTROL_MSG_CLIPBOARD_TEXT_MAX_LENGTH ;
 int CONTROL_MSG_TEXT_MAX_LENGTH ;
 int LOGW (char*,unsigned int) ;
 int buffer_write32be (unsigned char*,int ) ;
 int write_position (unsigned char*,int *) ;
 size_t write_string (int ,int ,unsigned char*) ;

size_t
control_msg_serialize(const struct control_msg *msg, unsigned char *buf) {
    buf[0] = msg->type;
    switch (msg->type) {
        case 133:
            buf[1] = msg->inject_keycode.action;
            buffer_write32be(&buf[2], msg->inject_keycode.keycode);
            buffer_write32be(&buf[6], msg->inject_keycode.metastate);
            return 10;
        case 130: {
            size_t len = write_string(msg->inject_text.text,
                                      CONTROL_MSG_TEXT_MAX_LENGTH, &buf[1]);
            return 1 + len;
        }
        case 132:
            buf[1] = msg->inject_mouse_event.action;
            buffer_write32be(&buf[2], msg->inject_mouse_event.buttons);
            write_position(&buf[6], &msg->inject_mouse_event.position);
            return 18;
        case 131:
            write_position(&buf[1], &msg->inject_scroll_event.position);
            buffer_write32be(&buf[13],
                             (uint32_t) msg->inject_scroll_event.hscroll);
            buffer_write32be(&buf[17],
                             (uint32_t) msg->inject_scroll_event.vscroll);
            return 21;
        case 129: {
            size_t len = write_string(msg->inject_text.text,
                                      CONTROL_MSG_CLIPBOARD_TEXT_MAX_LENGTH,
                                      &buf[1]);
            return 1 + len;
        }
        case 128:
            buf[1] = msg->set_screen_power_mode.mode;
            return 2;
        case 137:
        case 135:
        case 136:
        case 134:

            return 1;
        default:
            LOGW("Unknown message type: %u", (unsigned) msg->type);
            return 0;
    }
}
