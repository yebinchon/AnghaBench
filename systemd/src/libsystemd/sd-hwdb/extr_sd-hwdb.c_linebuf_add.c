
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct linebuf {size_t len; scalar_t__ bytes; } ;


 int memcpy (scalar_t__,char const*,size_t) ;

__attribute__((used)) static bool linebuf_add(struct linebuf *buf, const char *s, size_t len) {
        if (buf->len + len >= sizeof(buf->bytes))
                return 0;
        memcpy(buf->bytes + buf->len, s, len);
        buf->len += len;
        return 1;
}
