
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * argv; int db; } ;
typedef TYPE_1__ client ;


 int LOOKUP_NOTOUCH ;
 int addReplyLongLong (TYPE_1__*,long long) ;
 long long getExpire (int ,int ) ;
 int * lookupKeyReadWithFlags (int ,int ,int ) ;
 long long mstime () ;

void ttlGenericCommand(client *c, int output_ms) {
    long long expire, ttl = -1;


    if (lookupKeyReadWithFlags(c->db,c->argv[1],LOOKUP_NOTOUCH) == ((void*)0)) {
        addReplyLongLong(c,-2);
        return;
    }


    expire = getExpire(c->db,c->argv[1]);
    if (expire != -1) {
        ttl = expire-mstime();
        if (ttl < 0) ttl = 0;
    }
    if (ttl == -1) {
        addReplyLongLong(c,-1);
    } else {
        addReplyLongLong(c,output_ms ? ttl : ((ttl+500)/1000));
    }
}
