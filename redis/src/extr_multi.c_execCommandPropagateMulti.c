
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int robj ;
struct TYPE_6__ {TYPE_1__* db; } ;
typedef TYPE_2__ client ;
struct TYPE_7__ {int multiCommand; } ;
struct TYPE_5__ {int id; } ;


 int PROPAGATE_AOF ;
 int PROPAGATE_REPL ;
 int * createStringObject (char*,int) ;
 int decrRefCount (int *) ;
 int propagate (int ,int ,int **,int,int) ;
 TYPE_3__ server ;

void execCommandPropagateMulti(client *c) {
    robj *multistring = createStringObject("MULTI",5);

    propagate(server.multiCommand,c->db->id,&multistring,1,
              PROPAGATE_AOF|PROPAGATE_REPL);
    decrRefCount(multistring);
}
