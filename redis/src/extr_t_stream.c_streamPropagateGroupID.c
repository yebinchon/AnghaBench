
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_6__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {int last_id; } ;
typedef TYPE_2__ streamCG ;
typedef int robj ;
struct TYPE_9__ {TYPE_1__* db; } ;
typedef TYPE_3__ client ;
struct TYPE_10__ {int xgroupCommand; } ;
struct TYPE_7__ {int id; } ;


 int PROPAGATE_AOF ;
 int PROPAGATE_REPL ;
 int * createObjectFromStreamID (int *) ;
 int * createStringObject (char*,int) ;
 int decrRefCount (int *) ;
 int propagate (int ,int ,int **,int,int) ;
 TYPE_6__ server ;

void streamPropagateGroupID(client *c, robj *key, streamCG *group, robj *groupname) {
    robj *argv[5];
    argv[0] = createStringObject("XGROUP",6);
    argv[1] = createStringObject("SETID",5);
    argv[2] = key;
    argv[3] = groupname;
    argv[4] = createObjectFromStreamID(&group->last_id);
    propagate(server.xgroupCommand,c->db->id,argv,5,PROPAGATE_AOF|PROPAGATE_REPL);
    decrRefCount(argv[0]);
    decrRefCount(argv[1]);
    decrRefCount(argv[4]);
}
