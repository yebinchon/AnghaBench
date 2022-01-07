
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_9__ ;
typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_12__ {int delivery_count; int delivery_time; TYPE_1__* consumer; } ;
typedef TYPE_3__ streamNACK ;
struct TYPE_13__ {int last_id; } ;
typedef TYPE_4__ streamCG ;
typedef int robj ;
struct TYPE_14__ {TYPE_2__* db; } ;
typedef TYPE_5__ client ;
struct TYPE_15__ {int xclaimCommand; } ;
struct TYPE_11__ {int id; } ;
struct TYPE_10__ {char* name; } ;


 int PROPAGATE_AOF ;
 int PROPAGATE_REPL ;
 int * createObjectFromStreamID (int *) ;
 int * createStringObject (char*,int) ;
 int * createStringObjectFromLongLong (int ) ;
 int decrRefCount (int *) ;
 int propagate (int ,int ,int **,int,int) ;
 int sdslen (char*) ;
 TYPE_9__ server ;

void streamPropagateXCLAIM(client *c, robj *key, streamCG *group, robj *groupname, robj *id, streamNACK *nack) {







    robj *argv[14];
    argv[0] = createStringObject("XCLAIM",6);
    argv[1] = key;
    argv[2] = groupname;
    argv[3] = createStringObject(nack->consumer->name,sdslen(nack->consumer->name));
    argv[4] = createStringObjectFromLongLong(0);
    argv[5] = id;
    argv[6] = createStringObject("TIME",4);
    argv[7] = createStringObjectFromLongLong(nack->delivery_time);
    argv[8] = createStringObject("RETRYCOUNT",10);
    argv[9] = createStringObjectFromLongLong(nack->delivery_count);
    argv[10] = createStringObject("FORCE",5);
    argv[11] = createStringObject("JUSTID",6);
    argv[12] = createStringObject("LASTID",6);
    argv[13] = createObjectFromStreamID(&group->last_id);
    propagate(server.xclaimCommand,c->db->id,argv,14,PROPAGATE_AOF|PROPAGATE_REPL);
    decrRefCount(argv[0]);
    decrRefCount(argv[3]);
    decrRefCount(argv[4]);
    decrRefCount(argv[6]);
    decrRefCount(argv[7]);
    decrRefCount(argv[8]);
    decrRefCount(argv[9]);
    decrRefCount(argv[10]);
    decrRefCount(argv[11]);
    decrRefCount(argv[12]);
    decrRefCount(argv[13]);
}
