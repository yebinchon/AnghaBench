
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_47__ TYPE_8__ ;
typedef struct TYPE_46__ TYPE_5__ ;
typedef struct TYPE_45__ TYPE_4__ ;
typedef struct TYPE_44__ TYPE_3__ ;
typedef struct TYPE_43__ TYPE_2__ ;
typedef struct TYPE_42__ TYPE_24__ ;
typedef struct TYPE_41__ TYPE_21__ ;
typedef struct TYPE_40__ TYPE_20__ ;
typedef struct TYPE_39__ TYPE_1__ ;


struct TYPE_39__ {scalar_t__ seq; scalar_t__ ms; } ;
typedef TYPE_1__ streamID ;
struct TYPE_43__ {TYPE_1__ last_id; } ;
typedef TYPE_2__ streamCG ;
struct TYPE_44__ {int cgroups; TYPE_1__ last_id; } ;
typedef TYPE_3__ stream ;
typedef char* sds ;
struct TYPE_45__ {TYPE_3__* ptr; } ;
typedef TYPE_4__ robj ;
struct TYPE_46__ {int argc; TYPE_24__* db; TYPE_8__** argv; } ;
typedef TYPE_5__ client ;
struct TYPE_47__ {char* ptr; } ;
struct TYPE_42__ {int id; } ;
struct TYPE_41__ {int dirty; } ;
struct TYPE_40__ {int czero; int cone; int ok; } ;


 scalar_t__ C_OK ;
 int NOTIFY_STREAM ;
 int OBJ_STREAM ;
 int addReply (TYPE_5__*,int ) ;
 int addReplyError (TYPE_5__*,char*) ;
 int addReplyErrorFormat (TYPE_5__*,char*,char*,char*) ;
 int addReplyHelp (TYPE_5__*,char const**) ;
 int addReplyLongLong (TYPE_5__*,long long) ;
 int addReplySds (TYPE_5__*,int ) ;
 int addReplySubcommandSyntaxError (TYPE_5__*) ;
 scalar_t__ checkType (TYPE_5__*,TYPE_4__*,int ) ;
 TYPE_4__* createStreamObject () ;
 int dbAdd (TYPE_24__*,TYPE_8__*,TYPE_4__*) ;
 TYPE_4__* lookupKeyWrite (TYPE_24__*,TYPE_8__*) ;
 int notifyKeyspaceEvent (int ,char*,TYPE_8__*,int ) ;
 int raxRemove (int ,unsigned char*,int ,int *) ;
 int sdslen (char*) ;
 int sdsnew (char*) ;
 TYPE_21__ server ;
 int serverAssert (int) ;
 TYPE_20__ shared ;
 scalar_t__ strcasecmp (char*,char*) ;
 int strcmp (char*,char*) ;
 TYPE_2__* streamCreateCG (TYPE_3__*,char*,int ,TYPE_1__*) ;
 long long streamDelConsumer (TYPE_2__*,char*) ;
 int streamFreeCG (TYPE_2__*) ;
 TYPE_2__* streamLookupCG (TYPE_3__*,char*) ;
 scalar_t__ streamParseIDOrReply (TYPE_5__*,TYPE_8__*,TYPE_1__*,int ) ;
 scalar_t__ streamParseStrictIDOrReply (TYPE_5__*,TYPE_8__*,TYPE_1__*,int ) ;

void xgroupCommand(client *c) {
    const char *help[] = {
"CREATE      <key> <groupname> <id or $> [opt] -- Create a new consumer group.",
"            option MKSTREAM: create the empty stream if it does not exist.",
"SETID       <key> <groupname> <id or $>  -- Set the current group ID.",
"DESTROY     <key> <groupname>            -- Remove the specified group.",
"DELCONSUMER <key> <groupname> <consumer> -- Remove the specified consumer.",
"HELP                                     -- Prints this help.",
((void*)0)
    };
    stream *s = ((void*)0);
    sds grpname = ((void*)0);
    streamCG *cg = ((void*)0);
    char *opt = c->argv[1]->ptr;
    int mkstream = 0;
    robj *o;



    if (c->argc == 6 && !strcasecmp(opt,"CREATE")) {
        if (strcasecmp(c->argv[5]->ptr,"MKSTREAM")) {
            addReplySubcommandSyntaxError(c);
            return;
        }
        mkstream = 1;
        grpname = c->argv[3]->ptr;
    }


    if (c->argc >= 4) {
        o = lookupKeyWrite(c->db,c->argv[2]);
        if (o) {
            if (checkType(c,o,OBJ_STREAM)) return;
            s = o->ptr;
        }
        grpname = c->argv[3]->ptr;
    }


    if (c->argc >= 4 && !mkstream) {

        if (s == ((void*)0)) {
            addReplyError(c,
                "The XGROUP subcommand requires the key to exist. "
                "Note that for CREATE you may want to use the MKSTREAM "
                "option to create an empty stream automatically.");
            return;
        }


        if ((cg = streamLookupCG(s,grpname)) == ((void*)0) &&
            (!strcasecmp(opt,"SETID") ||
             !strcasecmp(opt,"DELCONSUMER")))
        {
            addReplyErrorFormat(c, "-NOGROUP No such consumer group '%s' "
                                   "for key name '%s'",
                                   (char*)grpname, (char*)c->argv[2]->ptr);
            return;
        }
    }


    if (!strcasecmp(opt,"CREATE") && (c->argc == 5 || c->argc == 6)) {
        streamID id;
        if (!strcmp(c->argv[4]->ptr,"$")) {
            if (s) {
                id = s->last_id;
            } else {
                id.ms = 0;
                id.seq = 0;
            }
        } else if (streamParseStrictIDOrReply(c,c->argv[4],&id,0) != C_OK) {
            return;
        }


        if (s == ((void*)0)) {
            serverAssert(mkstream);
            o = createStreamObject();
            dbAdd(c->db,c->argv[2],o);
            s = o->ptr;
        }

        streamCG *cg = streamCreateCG(s,grpname,sdslen(grpname),&id);
        if (cg) {
            addReply(c,shared.ok);
            server.dirty++;
            notifyKeyspaceEvent(NOTIFY_STREAM,"xgroup-create",
                                c->argv[2],c->db->id);
        } else {
            addReplySds(c,
                sdsnew("-BUSYGROUP Consumer Group name already exists\r\n"));
        }
    } else if (!strcasecmp(opt,"SETID") && c->argc == 5) {
        streamID id;
        if (!strcmp(c->argv[4]->ptr,"$")) {
            id = s->last_id;
        } else if (streamParseIDOrReply(c,c->argv[4],&id,0) != C_OK) {
            return;
        }
        cg->last_id = id;
        addReply(c,shared.ok);
        server.dirty++;
        notifyKeyspaceEvent(NOTIFY_STREAM,"xgroup-setid",c->argv[2],c->db->id);
    } else if (!strcasecmp(opt,"DESTROY") && c->argc == 4) {
        if (cg) {
            raxRemove(s->cgroups,(unsigned char*)grpname,sdslen(grpname),((void*)0));
            streamFreeCG(cg);
            addReply(c,shared.cone);
            server.dirty++;
            notifyKeyspaceEvent(NOTIFY_STREAM,"xgroup-destroy",
                                c->argv[2],c->db->id);
        } else {
            addReply(c,shared.czero);
        }
    } else if (!strcasecmp(opt,"DELCONSUMER") && c->argc == 5) {


        long long pending = streamDelConsumer(cg,c->argv[4]->ptr);
        addReplyLongLong(c,pending);
        server.dirty++;
        notifyKeyspaceEvent(NOTIFY_STREAM,"xgroup-delconsumer",
                            c->argv[2],c->db->id);
    } else if (!strcasecmp(opt,"HELP")) {
        addReplyHelp(c, help);
    } else {
        addReplySubcommandSyntaxError(c);
    }
}
