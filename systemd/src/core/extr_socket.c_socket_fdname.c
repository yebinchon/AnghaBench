
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {char* id; } ;
struct TYPE_6__ {scalar_t__ fdname; } ;
typedef TYPE_1__ Socket ;


 TYPE_4__* UNIT (TYPE_1__*) ;
 int assert (TYPE_1__*) ;

char *socket_fdname(Socket *s) {
        assert(s);





        return s->fdname ?: UNIT(s)->id;
}
