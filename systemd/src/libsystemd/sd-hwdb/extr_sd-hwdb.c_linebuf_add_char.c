
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct linebuf {int len; char* bytes; } ;



__attribute__((used)) static bool linebuf_add_char(struct linebuf *buf, char c) {
        if (buf->len + 1 >= sizeof(buf->bytes))
                return 0;
        buf->bytes[buf->len++] = c;
        return 1;
}
