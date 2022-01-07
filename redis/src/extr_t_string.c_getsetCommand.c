
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {TYPE_2__* db; int * argv; } ;
typedef TYPE_1__ client ;
struct TYPE_8__ {int dirty; } ;
struct TYPE_7__ {int id; } ;


 scalar_t__ C_ERR ;
 int NOTIFY_STRING ;
 scalar_t__ getGenericCommand (TYPE_1__*) ;
 int notifyKeyspaceEvent (int ,char*,int ,int ) ;
 TYPE_3__ server ;
 int setKey (TYPE_2__*,int ,int ) ;
 int tryObjectEncoding (int ) ;

void getsetCommand(client *c) {
    if (getGenericCommand(c) == C_ERR) return;
    c->argv[2] = tryObjectEncoding(c->argv[2]);
    setKey(c->db,c->argv[1],c->argv[2]);
    notifyKeyspaceEvent(NOTIFY_STRING,"set",c->argv[1],c->db->id);
    server.dirty++;
}
