
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;
typedef struct TYPE_11__ TYPE_10__ ;


typedef int uint64_t ;
typedef int connection ;
struct TYPE_12__ {scalar_t__ reploffset; scalar_t__ numreplicas; scalar_t__ xread_group_noack; int * xread_consumer; int * xread_group; int * target; void* keys; scalar_t__ timeout; } ;
struct TYPE_13__ {int resp; int bulklen; int authenticated; char* slave_ip; void* pubsub_patterns; scalar_t__ client_tracking_redirection; int * client_list_node; int * peerid; void* pubsub_channels; void* watched_keys; scalar_t__ woff; TYPE_1__ bpop; int btype; void* reply; scalar_t__ obuf_soft_limit_reached_time; scalar_t__ reply_bytes; int slave_capa; scalar_t__ slave_listening_port; scalar_t__ repl_ack_time; scalar_t__ repl_ack_off; scalar_t__ read_reploff; scalar_t__ reploff; scalar_t__ repl_put_online_on_ack; int replstate; TYPE_10__* user; int lastinteraction; int ctime; scalar_t__ flags; scalar_t__ sentlen; scalar_t__ multibulklen; int * lastcmd; int cmd; int * argv; scalar_t__ argc; scalar_t__ reqtype; scalar_t__ querybuf_peak; void* pending_querybuf; void* querybuf; scalar_t__ qb_pos; scalar_t__ bufpos; int * name; int * conn; int id; } ;
typedef TYPE_2__ client ;
struct TYPE_14__ {int unixtime; int next_client_id; scalar_t__ tcpkeepalive; } ;
struct TYPE_11__ {int flags; } ;


 int BLOCKED_NONE ;
 TYPE_10__* DefaultUser ;
 int REPL_STATE_NONE ;
 int SLAVE_CAPA_NONE ;
 int USER_FLAG_NOPASS ;
 int connEnableTcpNoDelay (int *) ;
 int connKeepAlive (int *,scalar_t__) ;
 int connNonBlock (int *) ;
 int connSetPrivateData (int *,TYPE_2__*) ;
 int connSetReadHandler (int *,int ) ;
 int decrRefCountVoid ;
 void* dictCreate (int *,int *) ;
 int dupClientReplyValue ;
 int freeClientReplyValue ;
 int initClientMultiState (TYPE_2__*) ;
 int linkClient (TYPE_2__*) ;
 void* listCreate () ;
 int listMatchObjects ;
 int listSetDupMethod (void*,int ) ;
 int listSetFreeMethod (void*,int ) ;
 int listSetMatchMethod (void*,int ) ;
 int objectKeyHeapPointerValueDictType ;
 int objectKeyPointerValueDictType ;
 int readQueryFromClient ;
 void* sdsempty () ;
 int selectDb (TYPE_2__*,int ) ;
 TYPE_4__ server ;
 TYPE_2__* zmalloc (int) ;

client *createClient(connection *conn) {
    client *c = zmalloc(sizeof(client));





    if (conn) {
        connNonBlock(conn);
        connEnableTcpNoDelay(conn);
        if (server.tcpkeepalive)
            connKeepAlive(conn,server.tcpkeepalive);
        connSetReadHandler(conn, readQueryFromClient);
        connSetPrivateData(conn, c);
    }

    selectDb(c,0);
    uint64_t client_id = ++server.next_client_id;
    c->id = client_id;
    c->resp = 2;
    c->conn = conn;
    c->name = ((void*)0);
    c->bufpos = 0;
    c->qb_pos = 0;
    c->querybuf = sdsempty();
    c->pending_querybuf = sdsempty();
    c->querybuf_peak = 0;
    c->reqtype = 0;
    c->argc = 0;
    c->argv = ((void*)0);
    c->cmd = c->lastcmd = ((void*)0);
    c->user = DefaultUser;
    c->multibulklen = 0;
    c->bulklen = -1;
    c->sentlen = 0;
    c->flags = 0;
    c->ctime = c->lastinteraction = server.unixtime;


    c->authenticated = (c->user->flags & USER_FLAG_NOPASS) != 0;
    c->replstate = REPL_STATE_NONE;
    c->repl_put_online_on_ack = 0;
    c->reploff = 0;
    c->read_reploff = 0;
    c->repl_ack_off = 0;
    c->repl_ack_time = 0;
    c->slave_listening_port = 0;
    c->slave_ip[0] = '\0';
    c->slave_capa = SLAVE_CAPA_NONE;
    c->reply = listCreate();
    c->reply_bytes = 0;
    c->obuf_soft_limit_reached_time = 0;
    listSetFreeMethod(c->reply,freeClientReplyValue);
    listSetDupMethod(c->reply,dupClientReplyValue);
    c->btype = BLOCKED_NONE;
    c->bpop.timeout = 0;
    c->bpop.keys = dictCreate(&objectKeyHeapPointerValueDictType,((void*)0));
    c->bpop.target = ((void*)0);
    c->bpop.xread_group = ((void*)0);
    c->bpop.xread_consumer = ((void*)0);
    c->bpop.xread_group_noack = 0;
    c->bpop.numreplicas = 0;
    c->bpop.reploffset = 0;
    c->woff = 0;
    c->watched_keys = listCreate();
    c->pubsub_channels = dictCreate(&objectKeyPointerValueDictType,((void*)0));
    c->pubsub_patterns = listCreate();
    c->peerid = ((void*)0);
    c->client_list_node = ((void*)0);
    c->client_tracking_redirection = 0;
    listSetFreeMethod(c->pubsub_patterns,decrRefCountVoid);
    listSetMatchMethod(c->pubsub_patterns,listMatchObjects);
    if (conn) linkClient(c);
    initClientMultiState(c);
    return c;
}
