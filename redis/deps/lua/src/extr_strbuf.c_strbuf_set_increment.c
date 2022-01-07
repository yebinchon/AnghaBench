
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int increment; } ;
typedef TYPE_1__ strbuf_t ;


 int die (char*) ;

void strbuf_set_increment(strbuf_t *s, int increment)
{


    if (increment == 0 || increment == -1)
        die("BUG: Invalid string increment");

    s->increment = increment;
}
