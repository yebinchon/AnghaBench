
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int seq; int ms; } ;
typedef TYPE_1__ streamID ;
typedef int sds ;
typedef int rio ;


 int rioWriteBulkString (int *,int ,int ) ;
 int sdscatfmt (int ,char*,int ,int ) ;
 int sdsempty () ;
 int sdsfree (int ) ;
 int sdslen (int ) ;

int rioWriteBulkStreamID(rio *r,streamID *id) {
    int retval;

    sds replyid = sdscatfmt(sdsempty(),"%U-%U",id->ms,id->seq);
    if ((retval = rioWriteBulkString(r,replyid,sdslen(replyid))) == 0) return 0;
    sdsfree(replyid);
    return retval;
}
