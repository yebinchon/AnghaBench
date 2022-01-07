
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct linebuf {int len; char* bytes; } ;



__attribute__((used)) static const char *linebuf_get(struct linebuf *buf) {
        if (buf->len + 1 >= sizeof(buf->bytes))
                return ((void*)0);
        buf->bytes[buf->len] = '\0';
        return buf->bytes;
}
