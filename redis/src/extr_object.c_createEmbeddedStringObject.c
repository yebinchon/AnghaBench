
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct sdshdr8 {size_t len; size_t alloc; char* buf; int flags; } ;
struct TYPE_5__ {int refcount; int lru; struct sdshdr8* ptr; int encoding; int type; } ;
typedef TYPE_1__ robj ;
struct TYPE_6__ {int maxmemory_policy; } ;


 int LFUGetTimeInMinutes () ;
 int LFU_INIT_VAL ;
 int LRU_CLOCK () ;
 int MAXMEMORY_FLAG_LFU ;
 int OBJ_ENCODING_EMBSTR ;
 int OBJ_STRING ;
 char const* SDS_NOINIT ;
 int SDS_TYPE_8 ;
 int memcpy (char*,char const*,size_t) ;
 int memset (char*,int ,size_t) ;
 TYPE_3__ server ;
 TYPE_1__* zmalloc (int) ;

robj *createEmbeddedStringObject(const char *ptr, size_t len) {
    robj *o = zmalloc(sizeof(robj)+sizeof(struct sdshdr8)+len+1);
    struct sdshdr8 *sh = (void*)(o+1);

    o->type = OBJ_STRING;
    o->encoding = OBJ_ENCODING_EMBSTR;
    o->ptr = sh+1;
    o->refcount = 1;
    if (server.maxmemory_policy & MAXMEMORY_FLAG_LFU) {
        o->lru = (LFUGetTimeInMinutes()<<8) | LFU_INIT_VAL;
    } else {
        o->lru = LRU_CLOCK();
    }

    sh->len = len;
    sh->alloc = len;
    sh->flags = SDS_TYPE_8;
    if (ptr == SDS_NOINIT)
        sh->buf[len] = '\0';
    else if (ptr) {
        memcpy(sh->buf,ptr,len);
        sh->buf[len] = '\0';
    } else {
        memset(sh->buf,0,len+1);
    }
    return o;
}
