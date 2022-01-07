
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef char* sds ;
typedef int robj ;
struct TYPE_6__ {char* querybuf; int qb_pos; int flags; char** argv; size_t argc; int repl_ack_time; } ;
typedef TYPE_1__ client ;
struct TYPE_7__ {int unixtime; } ;


 int CLIENT_SLAVE ;
 int C_ERR ;
 int C_OK ;
 int OBJ_STRING ;
 scalar_t__ PROTO_INLINE_MAX_SIZE ;
 int addReplyError (TYPE_1__*,char*) ;
 char* createObject (int ,char*) ;
 int sdsfree (char*) ;
 scalar_t__ sdslen (char*) ;
 char* sdsnewlen (char*,size_t) ;
 char** sdssplitargs (char*,int*) ;
 TYPE_3__ server ;
 int setProtocolError (char*,TYPE_1__*) ;
 char* strchr (char*,char) ;
 int zfree (char**) ;
 char** zmalloc (int) ;

int processInlineBuffer(client *c) {
    char *newline;
    int argc, j, linefeed_chars = 1;
    sds *argv, aux;
    size_t querylen;


    newline = strchr(c->querybuf+c->qb_pos,'\n');


    if (newline == ((void*)0)) {
        if (sdslen(c->querybuf)-c->qb_pos > PROTO_INLINE_MAX_SIZE) {
            addReplyError(c,"Protocol error: too big inline request");
            setProtocolError("too big inline request",c);
        }
        return C_ERR;
    }


    if (newline && newline != c->querybuf+c->qb_pos && *(newline-1) == '\r')
        newline--, linefeed_chars++;


    querylen = newline-(c->querybuf+c->qb_pos);
    aux = sdsnewlen(c->querybuf+c->qb_pos,querylen);
    argv = sdssplitargs(aux,&argc);
    sdsfree(aux);
    if (argv == ((void*)0)) {
        addReplyError(c,"Protocol error: unbalanced quotes in request");
        setProtocolError("unbalanced quotes in inline request",c);
        return C_ERR;
    }




    if (querylen == 0 && c->flags & CLIENT_SLAVE)
        c->repl_ack_time = server.unixtime;


    c->qb_pos += querylen+linefeed_chars;


    if (argc) {
        if (c->argv) zfree(c->argv);
        c->argv = zmalloc(sizeof(robj*)*argc);
    }


    for (c->argc = 0, j = 0; j < argc; j++) {
        if (sdslen(argv[j])) {
            c->argv[c->argc] = createObject(OBJ_STRING,argv[j]);
            c->argc++;
        } else {
            sdsfree(argv[j]);
        }
    }
    zfree(argv);
    return C_OK;
}
