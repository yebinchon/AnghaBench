
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ length; scalar_t__ buf; } ;
typedef TYPE_1__ strbuf_t ;


 int memcpy (scalar_t__,char const*,int) ;

__attribute__((used)) static inline void strbuf_append_mem_unsafe(strbuf_t *s, const char *c, int len)
{
    memcpy(s->buf + s->length, c, len);
    s->length += len;
}
