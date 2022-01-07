
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {size_t cursor; size_t buffer; size_t length; } ;
typedef TYPE_1__ buffer ;


 int memcpy (size_t,char const*,size_t) ;
 size_t realloc (size_t,int) ;

void buffer_append(buffer *b, const char *data, size_t len) {
    size_t used = b->cursor - b->buffer;
    while (used + len + 1 >= b->length) {
        b->length += 1024;
        b->buffer = realloc(b->buffer, b->length);
        b->cursor = b->buffer + used;
    }
    memcpy(b->cursor, data, len);
    b->cursor += len;
}
