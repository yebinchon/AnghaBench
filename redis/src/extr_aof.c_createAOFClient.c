
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct client {int resp; void* reply; int * user; int * peerid; void* watched_keys; scalar_t__ obuf_soft_limit_reached_time; scalar_t__ reply_bytes; int replstate; int btype; scalar_t__ flags; scalar_t__ bufpos; int * argv; scalar_t__ argc; scalar_t__ querybuf_peak; int querybuf; int * name; int * conn; int id; } ;


 int BLOCKED_NONE ;
 int CLIENT_ID_AOF ;
 int SLAVE_STATE_WAIT_BGSAVE_START ;
 int dupClientReplyValue ;
 int freeClientReplyValue ;
 int initClientMultiState (struct client*) ;
 void* listCreate () ;
 int listSetDupMethod (void*,int ) ;
 int listSetFreeMethod (void*,int ) ;
 int sdsempty () ;
 int selectDb (struct client*,int ) ;
 struct client* zmalloc (int) ;

struct client *createAOFClient(void) {
    struct client *c = zmalloc(sizeof(*c));

    selectDb(c,0);
    c->id = CLIENT_ID_AOF;
    c->conn = ((void*)0);
    c->name = ((void*)0);
    c->querybuf = sdsempty();
    c->querybuf_peak = 0;
    c->argc = 0;
    c->argv = ((void*)0);
    c->bufpos = 0;
    c->flags = 0;
    c->btype = BLOCKED_NONE;


    c->replstate = SLAVE_STATE_WAIT_BGSAVE_START;
    c->reply = listCreate();
    c->reply_bytes = 0;
    c->obuf_soft_limit_reached_time = 0;
    c->watched_keys = listCreate();
    c->peerid = ((void*)0);
    c->resp = 2;
    c->user = ((void*)0);
    listSetFreeMethod(c->reply,freeClientReplyValue);
    listSetDupMethod(c->reply,dupClientReplyValue);
    initClientMultiState(c);
    return c;
}
