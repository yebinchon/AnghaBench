
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_11__ {size_t ridx; char* buf; int pos; int len; void* reply; TYPE_1__* fn; TYPE_3__* rstack; } ;
typedef TYPE_2__ redisReader ;
struct TYPE_12__ {scalar_t__ type; } ;
typedef TYPE_3__ redisReadTask ;
struct TYPE_10__ {void* (* createString ) (TYPE_3__*,char*,long long) ;void* (* createNil ) (TYPE_3__*) ;} ;


 scalar_t__ LLONG_MAX ;
 scalar_t__ REDIS_ERR ;
 int REDIS_ERR_PROTOCOL ;
 int REDIS_OK ;
 scalar_t__ REDIS_REPLY_NIL ;
 scalar_t__ REDIS_REPLY_VERB ;
 scalar_t__ SIZE_MAX ;
 int __redisReaderSetError (TYPE_2__*,int ,char*) ;
 int __redisReaderSetErrorOOM (TYPE_2__*) ;
 int moveToNextTask (TYPE_2__*) ;
 char* seekNewline (char*,int) ;
 scalar_t__ string2ll (char*,unsigned long,long long*) ;
 void* stub1 (TYPE_3__*) ;
 void* stub2 (TYPE_3__*,char*,long long) ;

__attribute__((used)) static int processBulkItem(redisReader *r) {
    redisReadTask *cur = &(r->rstack[r->ridx]);
    void *obj = ((void*)0);
    char *p, *s;
    long long len;
    unsigned long bytelen;
    int success = 0;

    p = r->buf+r->pos;
    s = seekNewline(p,r->len-r->pos);
    if (s != ((void*)0)) {
        p = r->buf+r->pos;
        bytelen = s-(r->buf+r->pos)+2;

        if (string2ll(p, bytelen - 2, &len) == REDIS_ERR) {
            __redisReaderSetError(r,REDIS_ERR_PROTOCOL,
                    "Bad bulk string length");
            return REDIS_ERR;
        }

        if (len < -1 || (LLONG_MAX > SIZE_MAX && len > (long long)SIZE_MAX)) {
            __redisReaderSetError(r,REDIS_ERR_PROTOCOL,
                    "Bulk string length out of range");
            return REDIS_ERR;
        }

        if (len == -1) {

            if (r->fn && r->fn->createNil)
                obj = r->fn->createNil(cur);
            else
                obj = (void*)REDIS_REPLY_NIL;
            success = 1;
        } else {

            bytelen += len+2;
            if (r->pos+bytelen <= r->len) {
                if ((cur->type == REDIS_REPLY_VERB && len < 4) ||
                    (cur->type == REDIS_REPLY_VERB && s[5] != ':'))
                {
                    __redisReaderSetError(r,REDIS_ERR_PROTOCOL,
                            "Verbatim string 4 bytes of content type are "
                            "missing or incorrectly encoded.");
                    return REDIS_ERR;
                }
                if (r->fn && r->fn->createString)
                    obj = r->fn->createString(cur,s+2,len);
                else
                    obj = (void*)(long)cur->type;
                success = 1;
            }
        }


        if (success) {
            if (obj == ((void*)0)) {
                __redisReaderSetErrorOOM(r);
                return REDIS_ERR;
            }

            r->pos += bytelen;


            if (r->ridx == 0) r->reply = obj;
            moveToNextTask(r);
            return REDIS_OK;
        }
    }

    return REDIS_ERR;
}
