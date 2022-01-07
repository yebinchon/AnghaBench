
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {void* userdata; int handler; } ;
typedef int PTYForwardHandler ;
typedef TYPE_1__ PTYForward ;


 int assert (TYPE_1__*) ;

void pty_forward_set_handler(PTYForward *f, PTYForwardHandler cb, void *userdata) {
        assert(f);

        f->handler = cb;
        f->userdata = userdata;
}
