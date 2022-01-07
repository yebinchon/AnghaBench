
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t uint16_t ;
struct TYPE_2__ {char* text; } ;
struct device_msg {unsigned char type; TYPE_1__ clipboard; } ;
typedef int ssize_t ;



 int LOGW (char*,...) ;
 char* SDL_malloc (int ) ;
 size_t buffer_read16be (unsigned char const*) ;
 int memcpy (char*,unsigned char const*,size_t) ;

ssize_t
device_msg_deserialize(const unsigned char *buf, size_t len,
                       struct device_msg *msg) {
    if (len < 3) {

        return 0;
    }

    msg->type = buf[0];
    switch (msg->type) {
        case 128: {
            uint16_t clipboard_len = buffer_read16be(&buf[1]);
            if (clipboard_len > len - 3) {
                return 0;
            }
            char *text = SDL_malloc(clipboard_len + 1);
            if (!text) {
                LOGW("Could not allocate text for clipboard");
                return -1;
            }
            if (clipboard_len) {
                memcpy(text, &buf[3], clipboard_len);
            }
            text[clipboard_len] = '\0';

            msg->clipboard.text = text;
            return 3 + clipboard_len;
        }
        default:
            LOGW("Unknown device message type: %d", (int) msg->type);
            return -1;
    }
}
