
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int dynamic; } ;
typedef TYPE_1__ strbuf_t ;


 int die (char*) ;
 TYPE_1__* malloc (int) ;
 int strbuf_init (TYPE_1__*,int) ;

strbuf_t *strbuf_new(int len)
{
    strbuf_t *s;

    s = malloc(sizeof(strbuf_t));
    if (!s)
        die("Out of memory");

    strbuf_init(s, len);


    s->dynamic = 1;

    return s;
}
