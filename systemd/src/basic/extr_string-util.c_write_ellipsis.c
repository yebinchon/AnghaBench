
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ is_locale_utf8 () ;

__attribute__((used)) static int write_ellipsis(char *buf, bool unicode) {
        if (unicode || is_locale_utf8()) {
                buf[0] = 0xe2;
                buf[1] = 0x80;
                buf[2] = 0xa6;
        } else {
                buf[0] = '.';
                buf[1] = '.';
                buf[2] = '.';
        }

        return 3;
}
