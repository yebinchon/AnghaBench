
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {TYPE_4__* path; } ;
struct TYPE_11__ {TYPE_4__* source_addr; TYPE_4__* host; } ;
struct TYPE_12__ {int privdata; TYPE_2__* funcs; struct TYPE_12__* saddr; struct TYPE_12__* timeout; TYPE_1__ unix_sock; TYPE_3__ tcp; int reader; int obuf; } ;
typedef TYPE_4__ redisContext ;
struct TYPE_10__ {int (* free_privdata ) (int ) ;} ;


 int free (TYPE_4__*) ;
 int memset (TYPE_4__*,int,int) ;
 int redisNetClose (TYPE_4__*) ;
 int redisReaderFree (int ) ;
 int sdsfree (int ) ;
 int stub1 (int ) ;

void redisFree(redisContext *c) {
    if (c == ((void*)0))
        return;
    redisNetClose(c);

    sdsfree(c->obuf);
    redisReaderFree(c->reader);
    free(c->tcp.host);
    free(c->tcp.source_addr);
    free(c->unix_sock.path);
    free(c->timeout);
    free(c->saddr);
    if (c->funcs->free_privdata) {
        c->funcs->free_privdata(c->privdata);
    }
    memset(c, 0xff, sizeof(*c));
    free(c);
}
