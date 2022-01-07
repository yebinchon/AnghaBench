
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int ridx; int err; char* errstr; int len; int pos; int * buf; int * reply; TYPE_1__* fn; } ;
typedef TYPE_2__ redisReader ;
struct TYPE_4__ {int (* freeObject ) (int *) ;} ;


 int memcpy (char*,char const*,size_t) ;
 int sdsfree (int *) ;
 size_t strlen (char const*) ;
 int stub1 (int *) ;

__attribute__((used)) static void __redisReaderSetError(redisReader *r, int type, const char *str) {
    size_t len;

    if (r->reply != ((void*)0) && r->fn && r->fn->freeObject) {
        r->fn->freeObject(r->reply);
        r->reply = ((void*)0);
    }


    sdsfree(r->buf);
    r->buf = ((void*)0);
    r->pos = r->len = 0;


    r->ridx = -1;


    r->err = type;
    len = strlen(str);
    len = len < (sizeof(r->errstr)-1) ? len : (sizeof(r->errstr)-1);
    memcpy(r->errstr,str,len);
    r->errstr[len] = '\0';
}
