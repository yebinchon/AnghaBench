
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef char* sds ;
struct TYPE_11__ {scalar_t__ ptr; } ;
typedef TYPE_2__ robj ;
typedef int dictEntry ;
struct TYPE_12__ {int argc; TYPE_1__* db; int * argv; } ;
typedef TYPE_3__ client ;
struct TYPE_13__ {TYPE_3__* current_client; } ;
struct TYPE_10__ {int dict; } ;


 int LL_RAW ;
 int LL_WARNING ;
 char* catClientInfoString (int ,TYPE_3__*) ;
 int decrRefCount (TYPE_2__*) ;
 int * dictFind (int ,scalar_t__) ;
 TYPE_2__* dictGetVal (int *) ;
 TYPE_2__* getDecodedObject (int ) ;
 int sdsempty () ;
 int sdsfree (char*) ;
 TYPE_5__ server ;
 int serverLog (int,char*,...) ;
 int serverLogObjectDebugInfo (TYPE_2__*) ;
 int serverLogRaw (int,char*) ;

void logCurrentClient(void) {
    if (server.current_client == ((void*)0)) return;

    client *cc = server.current_client;
    sds client;
    int j;

    serverLogRaw(LL_WARNING|LL_RAW, "\n------ CURRENT CLIENT INFO ------\n");
    client = catClientInfoString(sdsempty(),cc);
    serverLog(LL_WARNING|LL_RAW,"%s\n", client);
    sdsfree(client);
    for (j = 0; j < cc->argc; j++) {
        robj *decoded;

        decoded = getDecodedObject(cc->argv[j]);
        serverLog(LL_WARNING|LL_RAW,"argv[%d]: '%s'\n", j,
            (char*)decoded->ptr);
        decrRefCount(decoded);
    }


    if (cc->argc >= 1) {
        robj *val, *key;
        dictEntry *de;

        key = getDecodedObject(cc->argv[1]);
        de = dictFind(cc->db->dict, key->ptr);
        if (de) {
            val = dictGetVal(de);
            serverLog(LL_WARNING,"key '%s' found in DB containing the following object:", (char*)key->ptr);
            serverLogObjectDebugInfo(val);
        }
        decrRefCount(key);
    }
}
