
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * buf; } ;
typedef TYPE_1__ strbuf_t ;



__attribute__((used)) static inline int strbuf_allocated(strbuf_t *s)
{
    return s->buf != ((void*)0);
}
