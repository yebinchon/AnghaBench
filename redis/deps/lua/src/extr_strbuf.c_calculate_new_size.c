
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int size; int increment; } ;
typedef TYPE_1__ strbuf_t ;


 int die (char*) ;

__attribute__((used)) static int calculate_new_size(strbuf_t *s, int len)
{
    int reqsize, newsize;

    if (len <= 0)
        die("BUG: Invalid strbuf length requested");


    reqsize = len + 1;


    if (s->size > reqsize)
        return reqsize;

    newsize = s->size;
    if (s->increment < 0) {

        while (newsize < reqsize)
            newsize *= -s->increment;
    } else {

        newsize = ((newsize + s->increment - 1) / s->increment) * s->increment;
    }

    return newsize;
}
