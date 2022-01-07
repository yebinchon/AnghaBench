
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {char* buf; int length; } ;
typedef TYPE_1__ strbuf_t ;


 int strbuf_ensure_empty_length (TYPE_1__*,int) ;

__attribute__((used)) static inline void strbuf_append_char(strbuf_t *s, const char c)
{
    strbuf_ensure_empty_length(s, 1);
    s->buf[s->length++] = c;
}
