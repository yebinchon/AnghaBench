
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int length; } ;
typedef TYPE_1__ strbuf_t ;



__attribute__((used)) static inline void strbuf_extend_length(strbuf_t *s, int len)
{
    s->length += len;
}
