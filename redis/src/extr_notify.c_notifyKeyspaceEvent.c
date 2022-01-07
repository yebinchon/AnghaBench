
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int sds ;
struct TYPE_10__ {int ptr; } ;
typedef TYPE_1__ robj ;
typedef int buf ;
struct TYPE_11__ {int notify_keyspace_events; } ;


 int NOTIFY_KEYEVENT ;
 int NOTIFY_KEYSPACE ;
 int OBJ_STRING ;
 TYPE_1__* createObject (int ,int ) ;
 TYPE_1__* createStringObject (char*,int ) ;
 int decrRefCount (TYPE_1__*) ;
 int ll2string (char*,int,int) ;
 int moduleNotifyKeyspaceEvent (int,char*,TYPE_1__*,int) ;
 int pubsubPublishMessage (TYPE_1__*,TYPE_1__*) ;
 int sdscatlen (int ,char*,int) ;
 int sdscatsds (int ,int ) ;
 int sdsnewlen (char*,int) ;
 TYPE_2__ server ;
 int strlen (char*) ;

void notifyKeyspaceEvent(int type, char *event, robj *key, int dbid) {
    sds chan;
    robj *chanobj, *eventobj;
    int len = -1;
    char buf[24];





     moduleNotifyKeyspaceEvent(type, event, key, dbid);


    if (!(server.notify_keyspace_events & type)) return;

    eventobj = createStringObject(event,strlen(event));


    if (server.notify_keyspace_events & NOTIFY_KEYSPACE) {
        chan = sdsnewlen("__keyspace@",11);
        len = ll2string(buf,sizeof(buf),dbid);
        chan = sdscatlen(chan, buf, len);
        chan = sdscatlen(chan, "__:", 3);
        chan = sdscatsds(chan, key->ptr);
        chanobj = createObject(OBJ_STRING, chan);
        pubsubPublishMessage(chanobj, eventobj);
        decrRefCount(chanobj);
    }


    if (server.notify_keyspace_events & NOTIFY_KEYEVENT) {
        chan = sdsnewlen("__keyevent@",11);
        if (len == -1) len = ll2string(buf,sizeof(buf),dbid);
        chan = sdscatlen(chan, buf, len);
        chan = sdscatlen(chan, "__:", 3);
        chan = sdscatsds(chan, eventobj->ptr);
        chanobj = createObject(OBJ_STRING, chan);
        pubsubPublishMessage(chanobj, key);
        decrRefCount(chanobj);
    }
    decrRefCount(eventobj);
}
