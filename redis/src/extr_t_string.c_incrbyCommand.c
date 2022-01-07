
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int * argv; } ;
typedef TYPE_1__ client ;


 scalar_t__ C_OK ;
 scalar_t__ getLongLongFromObjectOrReply (TYPE_1__*,int ,long long*,int *) ;
 int incrDecrCommand (TYPE_1__*,long long) ;

void incrbyCommand(client *c) {
    long long incr;

    if (getLongLongFromObjectOrReply(c, c->argv[2], &incr, ((void*)0)) != C_OK) return;
    incrDecrCommand(c,incr);
}
