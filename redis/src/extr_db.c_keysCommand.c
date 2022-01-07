
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef char* sds ;
typedef int robj ;
typedef int dictIterator ;
typedef int dictEntry ;
struct TYPE_9__ {TYPE_5__* db; TYPE_1__** argv; } ;
typedef TYPE_2__ client ;
struct TYPE_10__ {int dict; } ;
struct TYPE_8__ {char* ptr; } ;


 int addReplyBulk (TYPE_2__*,int *) ;
 void* addReplyDeferredLen (TYPE_2__*) ;
 int * createStringObject (char*,int) ;
 int decrRefCount (int *) ;
 char* dictGetKey (int *) ;
 int * dictGetSafeIterator (int ) ;
 int * dictNext (int *) ;
 int dictReleaseIterator (int *) ;
 int keyIsExpired (TYPE_5__*,int *) ;
 int sdslen (char*) ;
 int setDeferredArrayLen (TYPE_2__*,void*,unsigned long) ;
 scalar_t__ stringmatchlen (char*,int,char*,int,int ) ;

void keysCommand(client *c) {
    dictIterator *di;
    dictEntry *de;
    sds pattern = c->argv[1]->ptr;
    int plen = sdslen(pattern), allkeys;
    unsigned long numkeys = 0;
    void *replylen = addReplyDeferredLen(c);

    di = dictGetSafeIterator(c->db->dict);
    allkeys = (pattern[0] == '*' && pattern[1] == '\0');
    while((de = dictNext(di)) != ((void*)0)) {
        sds key = dictGetKey(de);
        robj *keyobj;

        if (allkeys || stringmatchlen(pattern,plen,key,sdslen(key),0)) {
            keyobj = createStringObject(key,sdslen(key));
            if (!keyIsExpired(c->db,keyobj)) {
                addReplyBulk(c,keyobj);
                numkeys++;
            }
            decrRefCount(keyobj);
        }
    }
    dictReleaseIterator(di);
    setDeferredArrayLen(c,replylen,numkeys);
}
