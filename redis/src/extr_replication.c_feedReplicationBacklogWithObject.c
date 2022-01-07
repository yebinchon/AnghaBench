
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ encoding; void* ptr; } ;
typedef TYPE_1__ robj ;
typedef int llstr ;


 int LONG_STR_SIZE ;
 scalar_t__ OBJ_ENCODING_INT ;
 int feedReplicationBacklog (void*,size_t) ;
 size_t ll2string (char*,int,long) ;
 size_t sdslen (void*) ;

void feedReplicationBacklogWithObject(robj *o) {
    char llstr[LONG_STR_SIZE];
    void *p;
    size_t len;

    if (o->encoding == OBJ_ENCODING_INT) {
        len = ll2string(llstr,sizeof(llstr),(long)o->ptr);
        p = llstr;
    } else {
        len = sdslen(o->ptr);
        p = o->ptr;
    }
    feedReplicationBacklog(p,len);
}
