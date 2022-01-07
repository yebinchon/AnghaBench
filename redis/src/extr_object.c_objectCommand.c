
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_20__ TYPE_7__ ;
typedef struct TYPE_19__ TYPE_4__ ;
typedef struct TYPE_18__ TYPE_3__ ;
typedef struct TYPE_17__ TYPE_2__ ;
typedef struct TYPE_16__ TYPE_1__ ;


struct TYPE_16__ {int refcount; int encoding; } ;
typedef TYPE_1__ robj ;
struct TYPE_17__ {int argc; size_t resp; TYPE_7__** argv; } ;
typedef TYPE_2__ client ;
struct TYPE_20__ {int ptr; } ;
struct TYPE_19__ {int maxmemory_policy; } ;
struct TYPE_18__ {int * null; } ;


 int LFUDecrAndReturn (TYPE_1__*) ;
 int MAXMEMORY_FLAG_LFU ;
 int addReplyBulkCString (TYPE_2__*,int ) ;
 int addReplyError (TYPE_2__*,char*) ;
 int addReplyHelp (TYPE_2__*,char const**) ;
 int addReplyLongLong (TYPE_2__*,int) ;
 int addReplySubcommandSyntaxError (TYPE_2__*) ;
 int estimateObjectIdleTime (TYPE_1__*) ;
 TYPE_1__* objectCommandLookupOrReply (TYPE_2__*,TYPE_7__*,int ) ;
 TYPE_4__ server ;
 TYPE_3__ shared ;
 int strEncoding (int ) ;
 int strcasecmp (int ,char*) ;

void objectCommand(client *c) {
    robj *o;

    if (c->argc == 2 && !strcasecmp(c->argv[1]->ptr,"help")) {
        const char *help[] = {
"ENCODING <key> -- Return the kind of internal representation used in order to store the value associated with a key.",
"FREQ <key> -- Return the access frequency index of the key. The returned integer is proportional to the logarithm of the recent access frequency of the key.",
"IDLETIME <key> -- Return the idle time of the key, that is the approximated number of seconds elapsed since the last access to the key.",
"REFCOUNT <key> -- Return the number of references of the value associated with the specified key.",
((void*)0)
        };
        addReplyHelp(c, help);
    } else if (!strcasecmp(c->argv[1]->ptr,"refcount") && c->argc == 3) {
        if ((o = objectCommandLookupOrReply(c,c->argv[2],shared.null[c->resp]))
                == ((void*)0)) return;
        addReplyLongLong(c,o->refcount);
    } else if (!strcasecmp(c->argv[1]->ptr,"encoding") && c->argc == 3) {
        if ((o = objectCommandLookupOrReply(c,c->argv[2],shared.null[c->resp]))
                == ((void*)0)) return;
        addReplyBulkCString(c,strEncoding(o->encoding));
    } else if (!strcasecmp(c->argv[1]->ptr,"idletime") && c->argc == 3) {
        if ((o = objectCommandLookupOrReply(c,c->argv[2],shared.null[c->resp]))
                == ((void*)0)) return;
        if (server.maxmemory_policy & MAXMEMORY_FLAG_LFU) {
            addReplyError(c,"An LFU maxmemory policy is selected, idle time not tracked. Please note that when switching between policies at runtime LRU and LFU data will take some time to adjust.");
            return;
        }
        addReplyLongLong(c,estimateObjectIdleTime(o)/1000);
    } else if (!strcasecmp(c->argv[1]->ptr,"freq") && c->argc == 3) {
        if ((o = objectCommandLookupOrReply(c,c->argv[2],shared.null[c->resp]))
                == ((void*)0)) return;
        if (!(server.maxmemory_policy & MAXMEMORY_FLAG_LFU)) {
            addReplyError(c,"An LFU maxmemory policy is not selected, access frequency not tracked. Please note that when switching between policies at runtime LRU and LFU data will take some time to adjust.");
            return;
        }




        addReplyLongLong(c,LFUDecrAndReturn(o));
    } else {
        addReplySubcommandSyntaxError(c);
    }
}
