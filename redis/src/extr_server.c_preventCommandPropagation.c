
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int flags; } ;
typedef TYPE_1__ client ;


 int CLIENT_PREVENT_PROP ;

void preventCommandPropagation(client *c) {
    c->flags |= CLIENT_PREVENT_PROP;
}
