
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_51__ TYPE_6__ ;
typedef struct TYPE_50__ TYPE_5__ ;
typedef struct TYPE_49__ TYPE_4__ ;
typedef struct TYPE_48__ TYPE_3__ ;
typedef struct TYPE_47__ TYPE_2__ ;
typedef struct TYPE_46__ TYPE_1__ ;
typedef struct TYPE_45__ TYPE_14__ ;
typedef struct TYPE_44__ TYPE_12__ ;


typedef char* sds ;
struct TYPE_48__ {char* ptr; } ;
typedef TYPE_3__ robj ;
struct TYPE_46__ {char* ptr; } ;
struct TYPE_47__ {TYPE_1__ buffer; } ;
struct TYPE_49__ {TYPE_2__ io; } ;
typedef TYPE_4__ rio ;
struct TYPE_50__ {long last_dbid; int conn; } ;
typedef TYPE_5__ migrateCachedSocket ;
struct TYPE_51__ {int argc; TYPE_3__** argv; int db; } ;
typedef TYPE_6__ client ;
typedef int buf2 ;
typedef int buf1 ;
typedef int buf0 ;
struct TYPE_45__ {int dirty; scalar_t__ cluster_enabled; } ;
struct TYPE_44__ {int ok; int syntaxerr; } ;


 scalar_t__ C_OK ;
 scalar_t__ ETIMEDOUT ;
 int addReply (TYPE_6__*,int ) ;
 int addReplyError (TYPE_6__*,char*) ;
 int addReplyErrorFormat (TYPE_6__*,char*,char*) ;
 int addReplySds (TYPE_6__*,int ) ;
 scalar_t__ connSyncReadLine (int ,char*,int,long) ;
 int connSyncWrite (int ,char*,size_t,long) ;
 int createDumpPayload (TYPE_4__*,TYPE_3__*,TYPE_3__*) ;
 TYPE_3__* createStringObject (char*,int) ;
 int dbDelete (int ,TYPE_3__*) ;
 scalar_t__ errno ;
 long long getExpire (int ,TYPE_3__*) ;
 scalar_t__ getLongFromObjectOrReply (TYPE_6__*,TYPE_3__*,long*,int *) ;
 int incrRefCount (TYPE_3__*) ;
 TYPE_3__* lookupKeyRead (int ,TYPE_3__*) ;
 int migrateCloseSocket (TYPE_3__*,TYPE_3__*) ;
 TYPE_5__* migrateGetSocket (TYPE_6__*,TYPE_3__*,TYPE_3__*,long) ;
 long long mstime () ;
 int replaceClientCommandVector (TYPE_6__*,int,TYPE_3__**) ;
 int rioInitWithBuffer (TYPE_4__*,int ) ;
 int rioWriteBulkCount (TYPE_4__*,char,int) ;
 int rioWriteBulkLongLong (TYPE_4__*,long long) ;
 int rioWriteBulkString (TYPE_4__*,char*,int) ;
 int sdsEncodedObject (TYPE_3__*) ;
 int sdscatprintf (int ,char*,char*) ;
 int sdsempty () ;
 int sdsfree (char*) ;
 size_t sdslen (char*) ;
 int sdsnew (char*) ;
 TYPE_14__ server ;
 int serverAssertWithInfo (TYPE_6__*,int *,int ) ;
 TYPE_12__ shared ;
 int signalModifiedKey (int ,TYPE_3__*) ;
 int strcasecmp (char*,char*) ;
 int zfree (TYPE_3__**) ;
 TYPE_3__** zmalloc (int) ;
 TYPE_3__** zrealloc (TYPE_3__**,int) ;

void migrateCommand(client *c) {
    migrateCachedSocket *cs;
    int copy = 0, replace = 0, j;
    char *password = ((void*)0);
    long timeout;
    long dbid;
    robj **ov = ((void*)0);
    robj **kv = ((void*)0);
    robj **newargv = ((void*)0);
    rio cmd, payload;
    int may_retry = 1;
    int write_error = 0;
    int argv_rewritten = 0;


    int first_key = 3;
    int num_keys = 1;


    for (j = 6; j < c->argc; j++) {
        int moreargs = j < c->argc-1;
        if (!strcasecmp(c->argv[j]->ptr,"copy")) {
            copy = 1;
        } else if (!strcasecmp(c->argv[j]->ptr,"replace")) {
            replace = 1;
        } else if (!strcasecmp(c->argv[j]->ptr,"auth")) {
            if (!moreargs) {
                addReply(c,shared.syntaxerr);
                return;
            }
            j++;
            password = c->argv[j]->ptr;
        } else if (!strcasecmp(c->argv[j]->ptr,"keys")) {
            if (sdslen(c->argv[3]->ptr) != 0) {
                addReplyError(c,
                    "When using MIGRATE KEYS option, the key argument"
                    " must be set to the empty string");
                return;
            }
            first_key = j+1;
            num_keys = c->argc - j - 1;
            break;
        } else {
            addReply(c,shared.syntaxerr);
            return;
        }
    }


    if (getLongFromObjectOrReply(c,c->argv[5],&timeout,((void*)0)) != C_OK ||
        getLongFromObjectOrReply(c,c->argv[4],&dbid,((void*)0)) != C_OK)
    {
        return;
    }
    if (timeout <= 0) timeout = 1000;






    ov = zrealloc(ov,sizeof(robj*)*num_keys);
    kv = zrealloc(kv,sizeof(robj*)*num_keys);
    int oi = 0;

    for (j = 0; j < num_keys; j++) {
        if ((ov[oi] = lookupKeyRead(c->db,c->argv[first_key+j])) != ((void*)0)) {
            kv[oi] = c->argv[first_key+j];
            oi++;
        }
    }
    num_keys = oi;
    if (num_keys == 0) {
        zfree(ov); zfree(kv);
        addReplySds(c,sdsnew("+NOKEY\r\n"));
        return;
    }

try_again:
    write_error = 0;


    cs = migrateGetSocket(c,c->argv[1],c->argv[2],timeout);
    if (cs == ((void*)0)) {
        zfree(ov); zfree(kv);
        return;
    }

    rioInitWithBuffer(&cmd,sdsempty());


    if (password) {
        serverAssertWithInfo(c,((void*)0),rioWriteBulkCount(&cmd,'*',2));
        serverAssertWithInfo(c,((void*)0),rioWriteBulkString(&cmd,"AUTH",4));
        serverAssertWithInfo(c,((void*)0),rioWriteBulkString(&cmd,password,
            sdslen(password)));
    }


    int select = cs->last_dbid != dbid;
    if (select) {
        serverAssertWithInfo(c,((void*)0),rioWriteBulkCount(&cmd,'*',2));
        serverAssertWithInfo(c,((void*)0),rioWriteBulkString(&cmd,"SELECT",6));
        serverAssertWithInfo(c,((void*)0),rioWriteBulkLongLong(&cmd,dbid));
    }

    int non_expired = 0;





    for (j = 0; j < num_keys; j++) {
        long long ttl = 0;
        long long expireat = getExpire(c->db,kv[j]);

        if (expireat != -1) {
            ttl = expireat-mstime();
            if (ttl < 0) {
                continue;
            }
            if (ttl < 1) ttl = 1;
        }




        kv[non_expired++] = kv[j];

        serverAssertWithInfo(c,((void*)0),
            rioWriteBulkCount(&cmd,'*',replace ? 5 : 4));

        if (server.cluster_enabled)
            serverAssertWithInfo(c,((void*)0),
                rioWriteBulkString(&cmd,"RESTORE-ASKING",14));
        else
            serverAssertWithInfo(c,((void*)0),rioWriteBulkString(&cmd,"RESTORE",7));
        serverAssertWithInfo(c,((void*)0),sdsEncodedObject(kv[j]));
        serverAssertWithInfo(c,((void*)0),rioWriteBulkString(&cmd,kv[j]->ptr,
                sdslen(kv[j]->ptr)));
        serverAssertWithInfo(c,((void*)0),rioWriteBulkLongLong(&cmd,ttl));



        createDumpPayload(&payload,ov[j],kv[j]);
        serverAssertWithInfo(c,((void*)0),
            rioWriteBulkString(&cmd,payload.io.buffer.ptr,
                               sdslen(payload.io.buffer.ptr)));
        sdsfree(payload.io.buffer.ptr);



        if (replace)
            serverAssertWithInfo(c,((void*)0),rioWriteBulkString(&cmd,"REPLACE",7));
    }


    num_keys = non_expired;


    errno = 0;
    {
        sds buf = cmd.io.buffer.ptr;
        size_t pos = 0, towrite;
        int nwritten = 0;

        while ((towrite = sdslen(buf)-pos) > 0) {
            towrite = (towrite > (64*1024) ? (64*1024) : towrite);
            nwritten = connSyncWrite(cs->conn,buf+pos,towrite,timeout);
            if (nwritten != (signed)towrite) {
                write_error = 1;
                goto socket_err;
            }
            pos += nwritten;
        }
    }

    char buf0[1024];
    char buf1[1024];
    char buf2[1024];


    if (password && connSyncReadLine(cs->conn, buf0, sizeof(buf0), timeout) <= 0)
        goto socket_err;


    if (select && connSyncReadLine(cs->conn, buf1, sizeof(buf1), timeout) <= 0)
        goto socket_err;


    int error_from_target = 0;
    int socket_error = 0;
    int del_idx = 1;





    if (!copy) newargv = zmalloc(sizeof(robj*)*(num_keys+1));

    for (j = 0; j < num_keys; j++) {
        if (connSyncReadLine(cs->conn, buf2, sizeof(buf2), timeout) <= 0) {
            socket_error = 1;
            break;
        }
        if ((password && buf0[0] == '-') ||
            (select && buf1[0] == '-') ||
            buf2[0] == '-')
        {

            if (!error_from_target) {
                cs->last_dbid = -1;
                char *errbuf;
                if (password && buf0[0] == '-') errbuf = buf0;
                else if (select && buf1[0] == '-') errbuf = buf1;
                else errbuf = buf2;

                error_from_target = 1;
                addReplyErrorFormat(c,"Target instance replied with error: %s",
                    errbuf+1);
            }
        } else {
            if (!copy) {

                dbDelete(c->db,kv[j]);
                signalModifiedKey(c->db,kv[j]);
                server.dirty++;


                newargv[del_idx++] = kv[j];
                incrRefCount(kv[j]);
            }
        }
    }




    if (!error_from_target && socket_error && j == 0 && may_retry &&
        errno != ETIMEDOUT)
    {
        goto socket_err;
    }




    if (socket_error) migrateCloseSocket(c->argv[1],c->argv[2]);

    if (!copy) {



        if (del_idx > 1) {
            newargv[0] = createStringObject("DEL",3);

            replaceClientCommandVector(c,del_idx,newargv);
            argv_rewritten = 1;
        } else {

            zfree(newargv);
        }
        newargv = ((void*)0);
    }




    if (!error_from_target && socket_error) {
        may_retry = 0;
        goto socket_err;
    }

    if (!error_from_target) {






        cs->last_dbid = dbid;
        addReply(c,shared.ok);
    } else {


    }

    sdsfree(cmd.io.buffer.ptr);
    zfree(ov); zfree(kv); zfree(newargv);
    return;




socket_err:


    sdsfree(cmd.io.buffer.ptr);





    if (!argv_rewritten) migrateCloseSocket(c->argv[1],c->argv[2]);
    zfree(newargv);
    newargv = ((void*)0);



    if (errno != ETIMEDOUT && may_retry) {
        may_retry = 0;
        goto try_again;
    }


    zfree(ov); zfree(kv);
    addReplySds(c,
        sdscatprintf(sdsempty(),
            "-IOERR error or timeout %s to target instance\r\n",
            write_error ? "writing" : "reading"));
    return;
}
