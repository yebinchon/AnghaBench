
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int * argv; int db; } ;
typedef TYPE_1__ client ;
struct TYPE_8__ {int dirty; } ;
struct TYPE_7__ {int czero; int cone; } ;


 int addReply (TYPE_1__*,int ) ;
 scalar_t__ lookupKeyWrite (int ,int ) ;
 scalar_t__ removeExpire (int ,int ) ;
 TYPE_3__ server ;
 TYPE_2__ shared ;

void persistCommand(client *c) {
    if (lookupKeyWrite(c->db,c->argv[1])) {
        if (removeExpire(c->db,c->argv[1])) {
            addReply(c,shared.cone);
            server.dirty++;
        } else {
            addReply(c,shared.czero);
        }
    } else {
        addReply(c,shared.czero);
    }
}
