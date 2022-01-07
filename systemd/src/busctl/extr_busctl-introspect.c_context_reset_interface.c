
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ interface_flags; int interface_name; } ;
typedef TYPE_1__ Context ;


 int context_reset_member (TYPE_1__*) ;
 int mfree (int ) ;

__attribute__((used)) static void context_reset_interface(Context *c) {
        c->interface_name = mfree(c->interface_name);
        c->interface_flags = 0;

        context_reset_member(c);
}
