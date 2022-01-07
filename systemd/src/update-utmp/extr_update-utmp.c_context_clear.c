
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int audit_fd; int bus; } ;
typedef TYPE_1__ Context ;


 int assert (TYPE_1__*) ;
 int audit_close (int) ;
 int sd_bus_flush_close_unref (int ) ;

__attribute__((used)) static void context_clear(Context *c) {
        assert(c);

        c->bus = sd_bus_flush_close_unref(c->bus);





}
