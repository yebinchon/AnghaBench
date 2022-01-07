
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ length; } ;
typedef TYPE_1__ strbuf_t ;


 int strbuf_empty_length (TYPE_1__*) ;
 int strbuf_resize (TYPE_1__*,scalar_t__) ;

__attribute__((used)) static inline void strbuf_ensure_empty_length(strbuf_t *s, int len)
{
    if (len > strbuf_empty_length(s))
        strbuf_resize(s, s->length + len);
}
