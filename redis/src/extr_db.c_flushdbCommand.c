
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {TYPE_1__* db; } ;
typedef TYPE_2__ client ;
struct TYPE_11__ {int dirty; } ;
struct TYPE_10__ {int ok; } ;
struct TYPE_8__ {int id; } ;


 scalar_t__ C_ERR ;
 int EMPTYDB_ASYNC ;
 int addReply (TYPE_2__*,int ) ;
 scalar_t__ emptyDb (int ,int,int *) ;
 scalar_t__ getFlushCommandFlags (TYPE_2__*,int*) ;
 int jemalloc_purge () ;
 TYPE_4__ server ;
 TYPE_3__ shared ;

void flushdbCommand(client *c) {
    int flags;

    if (getFlushCommandFlags(c,&flags) == C_ERR) return;
    server.dirty += emptyDb(c->db->id,flags,((void*)0));
    addReply(c,shared.ok);







}
